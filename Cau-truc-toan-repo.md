# Bản Đồ Cấu Trúc Toàn Bộ Repository Đề Tài Khóa Luận

> **Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp  
> **Mã đề tài:** `2026.CN.01`  
> **Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: `0023410647` — Lớp: `ĐHCNTT23B-CS`)  
> **Giảng viên hướng dẫn:** TS. Lương Thái Ngọc  
> **Cơ sở đào tạo:** Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật

---

## 🗺️ Cây Thư Mục Toàn Bộ Dự Án

```text
thesis-2026-cn01-wireless-infrastructure-dthu/
├── AGENTS.md                                # Quy tắc làm việc cho các trợ lý AI dòng lệnh
├── CLAUDE.md                                # Quy chuẩn làm việc gốc cho Claude Code
├── CONTRIBUTING.md                          # Quy định đóng góp, commit và kỷ luật Git
├── Cau-truc-toan-repo.md                    # Bản đồ cấu trúc toàn bộ repository (Tệp này)
├── README.md                                # Trang tổng quan đề tài và hướng dẫn vận hành
├── build.ps1                                # Kịch bản PowerShell build nhanh LaTeX từ root
├── tool.ps1                                 # Menu điều khiển trung tâm tương tác 1-chạm (CLI Hub)
│
├── .github/                                 # Cấu hình GitHub Actions, Scripts & Copilot
│   ├── copilot-instructions.md              # Ràng buộc hành vi cho GitHub Copilot
│   ├── instructions/                        # Quy tắc tự động nạp theo từng thư mục (.instructions.md)
│   ├── scripts/                             # Script kiểm tra tính nhất quán trích dẫn
│   │   └── kiem_tra_trich_dan.py
│   └── workflows/                           # CI/CD: Tự động build LaTeX & Deploy Docsify Pages
│       ├── build-latex.yml
│       ├── deploy-pages.yml
│       └── kiem-tra.yml
│
├── .claude/                                 # Hệ thống Subagents, Skills và Slash Commands
│   ├── agents/                              # co-van-de-cuong.md, soan-chuong-bao-cao.md, ra-soat-truoc-nop.md
│   └── skills/                              # viet-chuong-bao-cao, kiem-tra-tai-lieu-tham-khao, viet-bao-cao-tuan...
│
├── docs/                                    # TRANG TÀI LIỆU WEB & DASHBOARD TIẾN ĐỘ (DOCSIFY)
│   ├── index.html                           # Điểm neo máy chủ web Docsify cực đẹp (hỗ trợ Dark mode, Mermaid, KaTeX)
│   ├── _sidebar.md                          # Menu điều hướng đa cấp Docsify
│   ├── README.md                            # Trang chủ tài liệu web
│   ├── weekly-changelog.md                  # Bảng theo dõi tiến độ tổng hợp các tuần
│   ├── system-diagrams.md                   # Tổng hợp toàn bộ sơ đồ kiến trúc bằng Mermaid
│   ├── publications.md                      # Trang đọc và tải ấn phẩm PDF chính thức
│   ├── reports/                             # Báo cáo tiến độ tuần dạng TÓM TẮT ĐÚNG 3 MỤC (week-01.md, week-02.md...)
│   │   ├── week-01.md
│   │   ├── week-02.md
│   │   ├── week-03.md
│   │   └── week-04.md
│   ├── research/                            # Nghiên cứu chuyên sâu WHAT / WHY / HOW dạng văn nói đọc hiểu
│   │   └── TONG_HOP_KIEN_TRUC_MANG_DTHU.md
│   └── downloads/                           # Chứa bản sao PDF để đọc/tải trực tiếp trên trình duyệt
│       ├── khoa-luan.pdf
│       └── slide-bao-ve.pdf
│
├── bao-cao/                                 # BẢN THẢO BÁO CÁO KHÓA LUẬN (MARKDOWN NGUYÊN BẢN)
│   ├── README.md
│   ├── 00-loi-cam-doan-cam-on.md            # Cam đoan, cảm ơn, tóm tắt tiếng Việt & tiếng Anh
│   ├── 00-loi-mo-dau.md                     # Tính cấp thiết, mục tiêu, đối tượng, phương pháp
│   ├── 00-danh-muc-tu-viet-tat-va-thuat-ngu.md
│   ├── 01-tong-quan-bai-toan-va-co-so-cong-nghe.md
│   ├── 02-phan-tich-va-thiet-ke-he-thong.md
│   ├── 03-hien-thuc-hoa-danh-gia-an-ninh-va-thuc-nghiem.md
│   ├── 04-ket-luan.md                       # Đánh giá kết quả đạt được, hạn chế, hướng phát triển
│   ├── 05-phu-luc.md                        # Hướng dẫn cài đặt, mã nguồn cốt lõi, log mẫu
│   └── tai-lieu-tham-khao.bib               # Danh mục BibTeX tài liệu tham khảo chuẩn quốc tế
│
├── latex/                                   # ẤN PHẨM KHÓA LUẬN CHÍNH THỨC (LATEX CHUẨN XUẤT BẢN)
│   ├── khoa-luan.tex                        # Master LaTeX file điều phối toàn bộ báo cáo
│   ├── slide-bao-ve.tex                     # Beamer LaTeX slide thuyết trình bảo vệ
│   ├── chuong/                              # Modular từng chương (.tex) tương ứng với bao-cao/
│   │   ├── 00-danh-muc-tu-viet-tat-va-thuat-ngu.tex
│   │   ├── 00-loi-cam-doan-cam-on.tex
│   │   ├── 00-loi-mo-dau.tex
│   │   ├── 01-tong-quan-va-co-so-ly-thuyet-mang-khong-day.tex
│   │   ├── 02-khao-sat-va-danh-gia-hien-trang-mang-dthu.tex
│   │   ├── 03-thiet-ke-kien-truc-tong-the-mo-phong-va-giai-phap.tex
│   │   ├── 04-ket-luan-va-huong-phat-trien.tex
│   │   └── 05-phu-luc.tex
│   ├── images/                              # Logo trường, sơ đồ kiến trúc, biểu đồ thực nghiệm
│   ├── scripts/                             # Script biên dịch tự động pdflatex + biber
│   │   ├── build.ps1                        # Cho Windows PowerShell (tự động dọn file rác)
│   │   └── build.sh                         # Cho Linux / macOS / Git Bash
│   └── outputs/                             # Thư mục chứa PDF đầu ra (tự sinh, .gitignore)
│       ├── khoa-luan.pdf
│       └── slide-bao-ve.pdf
│
├── code/                                    # MÃ NGUỒN TOÀN BỘ HỆ THỐNG
│   ├── README.md                            # Hướng dẫn kiến trúc, biến môi trường, cách chạy
│   ├── .env.example                         # Cấu hình mẫu môi trường bí mật
│   ├── cisco-packet-tracer/                 # File mô phỏng kiến trúc mạng Campus .pkt
│   ├── wlc/                                 # Kịch bản cấu hình WLC & chính sách CAPWAP
│   └── radius/                              # Cấu hình FreeRADIUS xác thực 802.1X
│
├── thu-tuc-khoa/                            # HỒ SƠ HỌC VỤ & THỦ TỤC KHOA
│   ├── 1.Don-dang-ky-de-tai.md              # Đơn đăng ký đề tài chính thức (Markdown)
│   ├── 1a.Don dang ky lam KLTN.docx         # Bản gốc Word ký nộp
│   ├── 1a.Don dang ky lam KLTN.pdf          # Bản scan/in PDF
│   ├── 2.Ke-hoach-thuc-hien.md              # Bảng kế hoạch tiến độ từng tuần nộp khoa (Markdown)
│   ├── 2.SV viet Ke hoach thuc hien.docx    # Bản gốc Word ký nộp
│   ├── 2.SV viet Ke hoach thuc hien.pdf     # Bản scan/in PDF
│   ├── 3.De cuong thuc hien de tai.docx     # Đề cương chi tiết Word
│   ├── 3.De cuong thuc hien de tai.pdf      # Đề cương chi tiết PDF
│   └── de-cuong-khoa-luan.md                # Đề cương chi tiết đã duyệt (Single Source of Truth)
│
├── huong-dan/                               # TIÊU CHÍ ĐÁNH GIÁ & HƯỚNG DẪN
│   ├── KH-KLTN 2026-2027.pdf                # Kế hoạch đào tạo của Nhà trường
│   ├── quy-dinh-hinh-thuc-kltn.pdf          # Quy định hình thức trình bày khóa luận
│   ├── rubric-cham-khoa-luan.md             # Rubric chấm điểm của Hội đồng chấm đề tài
│   └── bien-ban/                            # Biên bản họp định kỳ với GVHD
│
├── thuc-nghiem/                             # DỮ LIỆU ĐO KIỂM THỰC NGHIỆM ĐỊNH LƯỢNG
│   ├── du-lieu/                             # Lưu vết dữ liệu thô (log, packet, kết quả trần)
│   ├── ket-qua/                             # Bảng biểu định lượng, so sánh trước/sau khi áp dụng giải pháp
│   └── khao-sat-wifi/                       # Dữ liệu khảo sát thực địa từ Wi-Fi Analyzer & Speedtest
│
├── ke-hoach/                                # TÀI LIỆU KẾ HOẠCH NỘI BỘ
│   ├── README.md
│   ├── Weekly at 01-10-2026.pdf
│   └── new/
│
└── noi-dung-tong-hop/                       # NGUYÊN BẢN TỔNG HỢP KIẾN TRÚC & TOOL PHỤ TRỢ
    ├── README.md
    ├── TONG_HOP_KIEN_TRUC_MANG_DTHU.pdf
    └── tool/
```

---

## 🧭 Hướng Dẫn Vận Hành 1-Chạm

Chỉ cần mở PowerShell tại thư mục gốc và chạy:
```powershell
.\tool.ps1
```
* Bấm `[1]`: Mở máy chủ Docsify xem tài liệu Web trực quan trên trình duyệt (`http://localhost:3000`).
* Bấm `[2]`: Biên dịch Báo cáo Khóa luận LaTeX (`khoa-luan.tex` $\rightarrow$ `latex/outputs/khoa-luan.pdf`).
* Bấm `[3]`: Biên dịch Slide thuyết trình bảo vệ LaTeX (`slide-bao-ve.tex` $\rightarrow$ `latex/outputs/slide-bao-ve.pdf`).
* Bấm `[4]`: Đối chiếu kiểm tra tính toàn vẹn của trích dẫn BibTeX.
* Bấm `[5]` hoặc `[A]`: Biên dịch toàn bộ ấn phẩm và tự động đồng bộ sang `docs/downloads/`.
* Bấm `[O]`: Mở nhanh thư mục chứa file PDF trên Windows Explorer.
