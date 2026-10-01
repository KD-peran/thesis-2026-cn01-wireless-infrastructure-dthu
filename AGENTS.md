# AGENTS.md

Tài liệu cấu hình và quy chuẩn hoạt động của hệ thống Agent & Subagent trong dự án Khóa luận tốt nghiệp.

## 1. Thông tin học vụ chuẩn

- **Tên đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
- **Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: **0023410647** — Lớp: **ĐHCNTT23B-CS**)
- **Giảng viên hướng dẫn:** TS. Lương Thái Ngọc
- **Cơ sở đào tạo:** Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật
- **Ngành / Chuyên ngành:** Khoa học máy tính / Mạng Máy Tính và An Ninh (Khóa 2023 – 2027)

Mọi Agent và Subagent khi sinh nội dung báo cáo, slide hoặc tài liệu kỹ thuật bắt buộc phải tuân thủ nghiêm ngặt các thông tin học vụ trên.

---

## 2. Danh sách Agent chuyên trách

### 2.1. Agent Cố vấn Đề cương (`co-van-de-cuong`)
- **Vai trò:** Định hướng phương pháp luận, rà soát tính khả thi kỹ thuật của mô hình mạng không dây đề xuất.
- **Phạm vi hỗ trợ:**
  - Tư vấn cơ chế phân rã bài toán thiết kế mạng Enterprise cho môi trường khuôn viên trường đại học (Campus WLAN).
  - Phân tích ưu nhược điểm giữa mô hình AP độc lập (Autonomous AP) và mô hình AP quản lý tập trung qua bộ điều khiển (Lightweight AP + WLC).
  - Định hướng tính toán dung lượng và vùng phủ sóng theo chuẩn Wi-Fi 6 (802.11ax).
- **Nguyên tắc:** Phản biện khoa học, đưa ra gợi ý và tiêu chí so sánh, không quyết định thay sinh viên.

### 2.2. Agent Soạn thảo Chương Báo cáo (`soan-chuong-bao-cao`)
- **Vai trò:** Chắp bút và chuẩn hóa nội dung các chương báo cáo học thuật từ cơ sở lý thuyết, số liệu khảo sát thực địa đến phương án thiết kế kỹ thuật.
- **Phạm vi hỗ trợ:**
  - Soạn thảo nội dung theo cấu trúc 3 chương chính đã đăng ký:
    - **Chương 1:** Tổng quan và cơ sở lý thuyết mạng không dây (Chuẩn IEEE 802.11, kiến trúc WLC, cơ chế truy nhập kênh CSMA/CA, bảo mật WPA2/WPA3-Enterprise).
    - **Chương 2:** Khảo sát và đánh giá hiện trạng mạng không dây tại Trường Đại học Đồng Tháp (Thực trạng thiết bị RFS6000, sơ đồ mặt bằng các tòa nhà A1, B3, B5..., dữ liệu quét phổ Wi-Fi Analyzer, đo kiểm Throughput/Ping).
    - **Chương 3:** Thiết kế kiến trúc tổng thể, mô phỏng trên Cisco Packet Tracer và đề xuất giải pháp kỹ thuật (Quy hoạch Wi-Fi 6, nâng cấp WLC, Fast Roaming 802.11r/k/v, VLAN/Subnet, PoE+, định tuyến đa WAN).
  - Đảm bảo trích dẫn tài liệu tham khảo chính xác theo chuẩn BibLaTeX.
  - Đồng bộ giữa các bản thảo Markdown (`bao-cao/`, `noi-dung-tong-hop/`) và mã nguồn LaTeX (`latex/chuong/`).

### 2.3. Agent Rà soát Trước nộp (`ra-soat-truoc-nop`)
- **Vai trò:** Kiểm định chất lượng toàn diện trước các mốc báo cáo tiến độ và trước ngày nộp khóa luận chính thức.
- **Phạm vi hỗ trợ:**
  - Đối chiếu nội dung báo cáo với Rubric chấm điểm của Khoa Công nghệ và Kỹ thuật (`huong-dan/rubric-cham-khoa-luan.md`).
  - Kiểm tra liêm chính học thuật: xác thực nguồn gốc số liệu đo kiểm thực địa, kiểm tra danh mục tài liệu tham khảo có bị trích dẫn ảo hay không.
  - Kiểm tra tính toàn vẹn của mô hình mô phỏng Cisco Packet Tracer và sơ đồ kiến trúc hệ thống.

---

## 3. Quy chuẩn phối hợp giữa các Tool và Script

Hệ thống cung cấp một chuỗi công cụ (toolchain) khép kín:
1. **Quản lý kế hoạch:** `ke-hoach/tool/` tự động chuyển đổi báo cáo tiến độ hàng tuần từ định dạng Markdown sang file PDF chuyên nghiệp.
2. **Tổng hợp kiến trúc:** `noi-dung-tong-hop/tool/` hỗ trợ pipeline "Tool trong Tool": trích xuất sơ đồ Mermaid, chuyển thành ảnh PNG độ phân giải cao và xuất tài liệu PDF tổng hợp.
3. **Biên dịch LaTeX:** `latex/scripts/build.ps1` tự động tích hợp MiKTeX `pdflatex` và `biber` để biên dịch tài liệu khóa luận và slide bảo vệ.
4. **Trung tâm điều khiển:** Menu `tool.ps1` ở thư mục gốc giúp sinh viên truy cập và khởi chạy tất cả các tính năng trên chỉ với 1 cú nhấp chuột.
