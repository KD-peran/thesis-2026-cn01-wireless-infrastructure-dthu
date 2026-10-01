<#
.SYNOPSIS
    Trung Tâm Điều Khiển & Khởi Chạy Công Cụ (Interactive Tool Launcher Hub)
    Đề tài: Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp (2026-2027)
    Sinh viên: Nguyễn Thị Kỳ Duyên (0023410647) - GVHD: TS. Lương Thái Ngọc
.DESCRIPTION
    Menu tương tác tổng hợp tất cả các tool trong dự án:
    1 - Pipeline Tự Động Toàn Diện (Nội Dung Tổng Hợp -> Vẽ Sơ Đồ -> Xuất PDF)
    2 - Vẽ sơ đồ Mermaid sang PNG (Nội Dung Tổng Hợp)
    3 - Xuất PDF tài liệu tổng hợp (Trực tiếp)
    4 - Xuất Báo cáo tiến độ tuần sang PDF (Kế hoạch)
    5 - Biên dịch Khóa luận LaTeX (khoa-luan.tex)
    6 - Biên dịch Slide thuyết trình bảo vệ LaTeX (slide-bao-ve.tex)
    7 - Biên dịch Toàn bộ (Khóa luận + Slide bảo vệ)
    N / Q / 0 - Thoát chương trình
#>

[CmdletBinding()]
param()

$ErrorActionPreference = "Continue"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$rootDir = $PSScriptRoot
if (-not $rootDir) { $rootDir = (Get-Location).Path }

function Show-Header {
    Clear-Host
    Write-Host "======================================================================" -ForegroundColor Cyan
    Write-Host "   TRUNG TAM DIEU KHIEN & KHOI CHAY CONG CU (TOOL LAUNCHER HUB)       " -ForegroundColor Yellow
    Write-Host "   KLTN: Thiet ke Kien truc Ha tang Mang Khong day DTHU (2026-2027)   " -ForegroundColor White
    Write-Host "   SV: Nguyen Thi Ky Duyen (0023410647) - GVHD: TS. Luong Thai Ngoc   " -ForegroundColor Green
    Write-Host "======================================================================" -ForegroundColor Cyan
    Write-Host ""
}

function Show-Menu {
    Write-Host "--- [ 1. NHOM CONG CU NOI DUNG TONG HOP & SO DO ] ---" -ForegroundColor Green
    Write-Host "  [1] Pipeline 'Tool trong Tool' (Tach Mermaid -> Ve PNG HD -> Xuat PDF)" -ForegroundColor White
    Write-Host "  [2] Chi ve va xuat anh so do Mermaid sang PNG (tool\diagram.ps1)" -ForegroundColor Gray
    Write-Host "  [3] Chi bien dich Markdown sang file PDF (tool\export-pdf.ps1)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "--- [ 2. NHOM KE HOACH & BAO CAO TIEN DO ] ---" -ForegroundColor Green
    Write-Host "  [4] Xuat Bao cao Tien do Tuan sang PDF (ke-hoach\tool\export-pdf.ps1)" -ForegroundColor White
    Write-Host ""
    Write-Host "--- [ 3. NHOM BIEN DICH KHOA LUAN LATEX & SLIDE ] ---" -ForegroundColor Green
    Write-Host "  [5] Bien dich Khoa luan Tot nghiep (khoa-luan.tex -> outputs\khoa-luan.pdf)" -ForegroundColor White
    Write-Host "  [6] Bien dich Slide Bao ve Khoa luan (slide-bao-ve.tex -> outputs\slide-bao-ve.pdf)" -ForegroundColor White
    Write-Host "  [7] Bien dich Dong thoi ca Khoa luan + Slide bao ve" -ForegroundColor White
    Write-Host ""
    Write-Host "----------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "  [N] hoac [Q] hoac [0] : Thoat chuong trinh" -ForegroundColor Yellow
    Write-Host "======================================================================" -ForegroundColor Cyan
}

# Vòng lặp Menu chính
while ($true) {
    Show-Header
    Show-Menu
    Write-Host ""
    $choice = Read-Host ">> Nhap lua chon cua ban (1-7 hoac N de thoat)"
    $choice = $choice.Trim()

    if ($choice -in @("N", "n", "Q", "q", "0", "exit", "quit")) {
        Write-Host ""
        Write-Host "Cam on ban da su dung Tool Hub. Chuc ban hoan thanh tot khoa luan!" -ForegroundColor Green
        break
    }

    Write-Host ""
    Write-Host "----------------------------------------------------------------------" -ForegroundColor DarkGray

    switch ($choice) {
        "1" {
            Write-Host "[THUC THI] Khoi chay Pipeline 'Tool trong Tool' (Noi Dung Tong Hop)..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "noi-dung-tong-hop\export-all.ps1"
            if (Test-Path $scriptPath) {
                Push-Location (Join-Path $rootDir "noi-dung-tong-hop")
                try {
                    powershell -ExecutionPolicy Bypass -File ".\export-all.ps1"
                } finally {
                    Pop-Location
                }
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        "2" {
            Write-Host "[THUC THI] Ve & xuat anh so do Mermaid sang PNG..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "noi-dung-tong-hop\tool\diagram.ps1"
            if (Test-Path $scriptPath) {
                Push-Location (Join-Path $rootDir "noi-dung-tong-hop")
                try {
                    powershell -ExecutionPolicy Bypass -File ".\tool\diagram.ps1"
                } finally {
                    Pop-Location
                }
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        "3" {
            Write-Host "[THUC THI] Bien dich Markdown sang PDF truc tiep..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "noi-dung-tong-hop\tool\export-pdf.ps1"
            if (Test-Path $scriptPath) {
                Push-Location (Join-Path $rootDir "noi-dung-tong-hop")
                try {
                    powershell -ExecutionPolicy Bypass -File ".\tool\export-pdf.ps1" -DirectOnly
                } finally {
                    Pop-Location
                }
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        "4" {
            Write-Host "[THUC THI] Xuat Bao cao Tien do Tuan sang PDF (ke-hoach)..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "ke-hoach\tool\export-pdf.ps1"
            if (Test-Path $scriptPath) {
                Push-Location (Join-Path $rootDir "ke-hoach")
                try {
                    powershell -ExecutionPolicy Bypass -File ".\tool\export-pdf.ps1"
                } finally {
                    Pop-Location
                }
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        "5" {
            Write-Host "[THUC THI] Bien dich Khoa luan Tot nghiep (khoa-luan.tex)..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "build.ps1"
            if (Test-Path $scriptPath) {
                powershell -ExecutionPolicy Bypass -File $scriptPath "khoa-luan.tex"
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        "6" {
            Write-Host "[THUC THI] Bien dich Slide Thuyet trinh Bao ve (slide-bao-ve.tex)..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "build.ps1"
            if (Test-Path $scriptPath) {
                powershell -ExecutionPolicy Bypass -File $scriptPath "slide-bao-ve.tex"
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        "7" {
            Write-Host "[THUC THI] Bien dich Dong thoi ca Khoa luan + Slide bao ve..." -ForegroundColor Yellow
            $scriptPath = Join-Path $rootDir "build.ps1"
            if (Test-Path $scriptPath) {
                powershell -ExecutionPolicy Bypass -File $scriptPath "khoa-luan.tex", "slide-bao-ve.tex"
            } else {
                Write-Host "[LOI] Khong tim thay script: $scriptPath" -ForegroundColor Red
            }
        }
        default {
            Write-Host "[CANH BAO] Lua chon '$choice' khong hop le. Vui long chon so tu 1 den 7 hoac nhap 'N' de thoat!" -ForegroundColor Red
        }
    }

    Write-Host ""
    Write-Host "----------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "Nhan Enter de quay lai Menu..." -ForegroundColor Cyan -NoNewline
    [void][System.Console]::ReadLine()
}
