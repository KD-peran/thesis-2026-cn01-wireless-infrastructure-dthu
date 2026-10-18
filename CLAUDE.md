# CLAUDE.md

Hướng dẫn cho Claude Code / Trợ lý AI khi làm việc trên repository này.

## Sứ Mệnh & Thông Tin Học Vụ Chuẩn

Đây là kho của **một khóa luận tốt nghiệp đại học** ngành Khoa học máy tính, chuyên ngành Mạng Máy Tính và An Ninh, Trường Đại học Đồng Tháp:
- **Tên đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
- **Mã số đề tài:** `2026.CN.01`
- **Sinh viên thực hiện:** **Nguyễn Thị Kỳ Duyên** (MSSV: `0023410647` — Lớp: `ĐHCNTT23B-CS`)
- **Giảng viên hướng dẫn:** **TS. Lương Thái Ngọc**
- **Cơ sở đào tạo:** Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật
- **Khóa đào tạo:** 2023 – 2027 (Thời gian thực hiện: Từ 01/09/2026 đến 29/04/2027)

---

## Ba Quy Tắc Chống Bịa (Liêm Chính Học Thuật)

Đây là những quy tắc bất biến quan trọng nhất. Vi phạm một trong ba là lỗi liêm chính học thuật:

1. **Không bịa số liệu đo kiểm:** Mọi con số khảo sát vùng phủ sóng, RSSI, SNR, thông lượng Throughput (Download/Upload) và độ trễ Ping phải đối chiếu chính xác từ dữ liệu thực tế tại các tòa nhà DTHU trong `thuc-nghiem/` hoặc trích xuất có căn cứ khoa học. Chưa đo thì để ô `TODO` và nêu rõ là đang thiếu, tuyệt đối không ước lượng hoặc lấy số cho có.
2. **Không bịa tài liệu tham khảo:** Không tự ý thêm nguồn không có thật vào `latex/tai-lieu-tham-khao.bib`. Mọi tiêu chuẩn IEEE (802.11a/b/g/n/ac/ax/be, 802.11r/k/v), sách giáo trình chuẩn (Matthew Gast, Kurose & Ross, Stallings, Cisco Design Guide) phải chính xác thông tin xuất bản, tác giả, năm và DOI/URL.
3. **Không bịa dữ liệu học vụ:**
   - Cơ sở đào tạo duy nhất: **Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật**.
   - Sinh viên thực hiện: **Nguyễn Thị Kỳ Duyên** (MSSV: `0023410647` — Lớp: `ĐHCNTT23B-CS`).
   - Giảng viên hướng dẫn: **TS. Lương Thái Ngọc**.
   - Ngành / Chuyên ngành: **Khoa học máy tính / Mạng Máy Tính và An Ninh** (Khóa 2023 – 2027).
   - Tuyệt đối KHÔNG suy đoán, không sử dụng tên trường khác. Mọi thông tin học vụ bắt buộc đối chiếu với `thu-tuc-khoa/de-cuong-khoa-luan.md`.

---

## Kỷ Luật Git Nghiêm Cấm Tự Động Push

- Trợ lý AI có thể tạo commit cục bộ (`git commit`) khi hoàn thành các đơn vị công việc logic rõ ràng.
- **TUYỆT ĐỐI NGHIÊM CẤM tự ý chạy `git push`** lên remote repository (`origin`). Thao tác push bắt buộc phải do người dùng tự làm hoặc có lệnh yêu cầu rõ ràng từ người dùng.

---

## Định Hướng Trọng Tâm Cốt Lõi (Scope Boundary - Chống Lệch Đề)

- **Trọng tâm 1 (Kỹ thuật then chốt - 100% công sức):**
  - Khảo sát thực địa (Wi-Fi Analyzer, Speedtest), chẩn đoán nghẽn tải WLC RFS6000 và can nhiễu 2.4 GHz tại 14 khối công trình DTHU.
  - Thiết kế kiến trúc 3 lớp phân cấp Enterprise Campus WLAN: Core Layer, Distribution Layer, Access Layer (PoE+ 802.3at).
  - Chuẩn hóa công nghệ **Wi-Fi 6 (IEEE 802.11ax)**: OFDMA, MU-MIMO hai chiều, BSS Coloring.
  - Tối ưu hóa vận hành: WLC tập trung High Availability N+1, Fast Roaming (IEEE 802.11r/k/v), phân hoạch VLAN /20, chiến lược thu hồi DHCP nhanh (2 – 4 giờ), xác thực định danh 802.1X/EAP với FreeRADIUS/LDAP.
- **Trọng tâm 2 (Phân hệ mô phỏng & đo lường định lượng):**
  - Mô phỏng toàn diện trên Cisco Packet Tracer 8.x, kiểm thử định tuyến đa WAN, cô lập Client Isolation, đánh giá so sánh định lượng các chỉ số kỹ thuật trước và sau tối ưu. Tuyệt đối không bàn luận lan man ngoài phạm vi này.

---

## Quy Chuẩn Soạn Thảo Markdown

1. Mỗi tệp Markdown chỉ có duy nhất **1 tiêu đề cấp một (`#`)**, mở đầu ngay sau đó bằng hộp trích dẫn `> **Mục đích:** ...`.
2. **Ký hiệu toán học & mũi tên:** Tuyệt đối KHÔNG viết mã LaTeX thô như `$\rightarrow$`, `$\approx$`, `$\pm$`. BẮT BUỘC dùng ký tự Unicode trực tiếp: `→`, `⟶`, `←`, `↔`, `≈`, `±`, `≤`, `≥`, `×` để Docsify và GitHub hiển thị sắc nét.

---

## Điều Hướng Cấu Trúc Toàn Repo

| Loại nội dung | Thư mục |
|:---|:---|
| Trang web tài liệu Docsify, dashboard tiến độ, báo cáo tuần | `docs/` |
| Báo cáo khóa luận LaTeX, slide Beamer bảo vệ, danh mục BibTeX, hình ảnh, PDF xuất ra | `latex/` |
| Hồ sơ học vụ: Đơn đăng ký, kế hoạch tuần, đề cương duyệt | `thu-tuc-khoa/` |
| Quy định trường, hướng dẫn biểu mẫu, rubric chấm điểm | `huong-dan/` |
| File mô phỏng Cisco Packet Tracer (.pkt), script cấu hình WLC/RADIUS | `code/` |
| Dữ liệu đo kiểm thực địa Wi-Fi Analyzer, kết quả Speedtest tại các tòa DTHU | `thuc-nghiem/` |
| Kịch bản điều khiển tương tác 1-chạm (CLI Hub) | `tool.ps1` |
| Bản đồ cấu trúc toàn bộ repository | `Cau-truc-toan-repo.md` |

---

## Hệ Thống Công Cụ 1-Chạm (`tool.ps1`)

Chạy script menu trung tâm:
```powershell
powershell -ExecutionPolicy Bypass -File .\tool.ps1
```
- `[1]`: Mở máy chủ Docsify xem tài liệu trên trình duyệt (`http://localhost:3000`).
- `[2]`: Biên dịch Báo cáo Khóa luận LaTeX (`khoa-luan.tex` → `latex/outputs/khoa-luan.pdf`).
- `[3]`: Biên dịch Slide thuyết trình bảo vệ LaTeX (`slide-bao-ve.tex` → `latex/outputs/slide-bao-ve.pdf`).
- `[4]`: Đối chiếu kiểm tra tính nhất quán trích dẫn BibTeX sạch 100%.
- `[5]` hoặc `[A]`: Biên dịch toàn bộ ấn phẩm và tự động đồng bộ sang `docs/downloads/`.
- `[O]`: Mở nhanh thư mục chứa file PDF trên Windows Explorer.
