# CLAUDE.md

Hướng dẫn cho Claude Code / Trợ lý AI khi làm việc trên repository này.

## Sứ mệnh

Đây là kho của **một khóa luận tốt nghiệp đại học** ngành Khoa học máy tính, chuyên ngành Mạng Máy Tính và An Ninh, Trường Đại học Đồng Tháp. Repo phục vụ sinh viên thực hiện đề tài và giảng viên hướng dẫn theo dõi tiến độ.

- **Tên đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
- **Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: **0023410647** — Lớp: **ĐHCNTT23B-CS**)
- **Giảng viên hướng dẫn:** TS. Lương Thái Ngọc
- **Cơ sở đào tạo:** Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật
- **Khóa đào tạo:** 2023 – 2027 (Thời gian thực hiện: Từ 01/09/2026 đến 29/04/2027)

Đầu ra gồm báo cáo khóa luận (LaTeX/PDF), slide thuyết trình bảo vệ, mô hình mô phỏng hệ thống mạng trên Cisco Packet Tracer, dữ liệu đo kiểm thực địa và tài liệu tổng hợp kỹ thuật.

## Ba quy tắc chống bịa

Đây là những quy tắc quan trọng nhất trong repo này. Vi phạm một trong ba là lỗi liêm chính học thuật:

1. **Không bịa số liệu đo kiểm:** Mọi con số khảo sát vùng phủ sóng, RSSI, SNR, thông lượng Throughput (Download/Upload) và độ trễ Ping phải đối chiếu chính xác từ dữ liệu thực tế tại các tòa nhà DTHU trong `thuc-nghiem/` hoặc trích xuất có căn cứ khoa học. Chưa đo thì để ô TODO, không ước lượng tùy tiện.
2. **Không bịa tài liệu tham khảo:** Không tự thêm nguồn không có thật vào `bao-cao/tai-lieu-tham-khao.bib`. Mọi tiêu chuẩn IEEE (802.11a/b/g/n/ac/ax/be, 802.11r/k/v), sách giáo trình chuẩn (Matthew Gast, Kurose & Ross, Stallings, Cisco Design Guide) phải chính xác thông tin xuất bản.
3. **Không bịa dữ liệu học vụ:**
   - Cơ sở đào tạo duy nhất: **Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật**.
   - Sinh viên thực hiện: **Nguyễn Thị Kỳ Duyên** (MSSV: **0023410647** — Lớp: **ĐHCNTT23B-CS**).
   - Giảng viên hướng dẫn: **TS. Lương Thái Ngọc**.
   - Ngành / Chuyên ngành: **Khoa học máy tính / Mạng Máy Tính và An Ninh** (Khóa 2023 – 2027).
   - Tuyệt đối KHÔNG suy đoán, không sử dụng tên trường khác. Mọi thông tin học vụ bắt buộc đối chiếu với `thu-tuc-khoa/de-cuong-khoa-luan.md` và `thu-tuc-khoa/3.De cuong thuc hien de tai.pdf`.

## Quy tắc làm việc

1. Ưu tiên cập nhật tài liệu sẵn có thay vì tạo bản mới trùng nội dung.
2. Lưu đúng vị trí theo bảng điều hướng bên dưới.
3. Văn phong học thuật, câu ngắn, rõ ràng, giàu thuật ngữ chuyên ngành mạng máy tính (BSS, ESS, SSID, WLC, Fast Roaming, OFDMA, MU-MIMO, BSS Coloring, VLAN, Subnet, RADIUS, PoE+, RSSI, SNR, Throughput, Latency).
4. Báo cáo viết bằng tiếng Việt **có dấu**. Mã lệnh, cấu hình thiết bị, kịch bản Packet Tracer viết chuẩn tiếng Anh kỹ thuật.
5. Luôn kiểm tra tính tương thích và quy chuẩn định dạng trước khi biên dịch.

## Điều hướng: việc gì lưu ở đâu

| Loại nội dung | Thư mục |
| --- | --- |
| Đơn đăng ký, kế hoạch mẫu, đề cương chính thức (PDF, DOCX, MD) | `thu-tuc-khoa/` |
| Báo cáo khóa luận LaTeX, slide Beamer bảo vệ, hình ảnh sơ đồ, PDF xuất ra | `latex/` |
| Các chương báo cáo dạng Markdown, danh mục tài liệu tham khảo BibTeX | `bao-cao/` |
| Báo cáo tiến độ hàng tuần và công cụ xuất PDF tự động | `ke-hoach/` |
| Tài liệu tổng hợp kiến trúc toàn diện, pipeline sơ đồ Mermaid -> PNG -> PDF | `noi-dung-tong-hop/` |
| Tài liệu tham khảo gốc (luận văn mẫu DTHU, báo cáo chuẩn IEEE 802.11) | `noi-dung-tong-hop/tai-lieu-tham-khao/` |
| Quy định trường, hướng dẫn biểu mẫu, rubric chấm điểm, biên bản họp GVHD | `huong-dan/` |
| File mô phỏng Cisco Packet Tracer (.pkt), script cấu hình Switch/WLC | `code/` |
| Dữ liệu đo kiểm thực địa Wi-Fi Analyzer, kết quả Speedtest tại các tòa DTHU | `thuc-nghiem/` |

## Bộ công cụ hỗ trợ (Tool Ecosystem)

### 1. Trung tâm điều khiển chính:
Chạy script menu tương tác:
```powershell
powershell -ExecutionPolicy Bypass -File .\tool.ps1
```

### 2. Biên dịch Khóa luận và Slide bảo vệ LaTeX:
Từ thư mục gốc:
```powershell
powershell -ExecutionPolicy Bypass -File .\build.ps1               # Mặc định build khoa-luan.tex
powershell -ExecutionPolicy Bypass -File .\build.ps1 slide-bao-ve.tex # Build slide bảo vệ
```

### 3. Xuất Báo cáo tiến độ tuần sang PDF:
```powershell
cd ke-hoach
powershell -ExecutionPolicy Bypass -File .\tool\export-pdf.ps1
```

### 4. Pipeline vẽ sơ đồ và xuất tài liệu tổng hợp:
```powershell
cd noi-dung-tong-hop
powershell -ExecutionPolicy Bypass -File .\export-all.ps1
```

## Agent, skill và slash command

Cấu hình nằm trong `.claude/`.

| Agent | Dùng khi |
| --- | --- |
| `co-van-de-cuong` | Bàn đề cương, phương án đo kiểm sóng Wi-Fi, thiết kế mạng phân cấp |
| `soan-chuong-bao-cao` | Viết và biên tập các chương báo cáo, đồng bộ giữa Markdown và LaTeX |
| `ra-soat-truoc-nop` | Đối chiếu nội dung với rubric chấm khóa luận và quy định của Khoa/Trường |

| Lệnh | Công dụng |
| --- | --- |
| `/bien-ban <so-tuan> [ghi chép]` | Tạo biên bản buổi gặp hướng dẫn hàng tuần với TS. Lương Thái Ngọc |
| `/kiem-tra-nop` | Rà soát toàn bộ văn bản và file mô phỏng trước hạn nộp |
| `/tien-do` | Đối chiếu tiến độ thực tế với các mốc trong Kế hoạch thực hiện |
