# Báo Cáo Tiến Độ Tuần 04

* **Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
* **Sinh viên:** Nguyễn Thị Kỳ Duyên (MSSV: 0023410647) — **Lớp:** ĐHCNTT23B-CS
* **Giảng viên hướng dẫn:** TS. Lương Thái Ngọc
* **Thời gian thực hiện:** Tuần 4

---

## 1. Kết quả tuần vừa rồi

* Đã thiết kế hoàn chỉnh kiến trúc phân cấp 3 lớp Enterprise Campus WLAN kết hợp bộ điều khiển WLC dự phòng High Availability (N+1 Active-Standby).
* Xây dựng và kiểm thử thành công kịch bản mô phỏng trên Cisco Packet Tracer 8.x: Kiểm thử định tuyến đa WAN, cô lập Client Isolation trong cùng SSID, cấp phát DHCP VLAN 20 (/20 cho 4.094 địa chỉ IP).
* Xây dựng giải pháp xác thực tập trung 802.1X/EAP-PEAP qua máy chủ FreeRADIUS tích hợp cơ sở dữ liệu sinh viên.
* Hoàn thiện bản thảo Chương 3 báo cáo khóa luận (Thiết kế kiến trúc, mô phỏng và giải pháp).
* Minh chứng đối chiếu: Tệp [latex/chuong/03-thiet-ke-kien-truc-tong-the-mo-phong-va-giai-phap.tex](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/latex/chuong/03-thiet-ke-kien-truc-tong-the-mo-phong-va-giai-phap.tex) và file mô phỏng trong `thuc-nghiem/cisco-packet-tracer/`.

---

## 2. Tóm tắt ngắn về kết quả tuần trước theo từng STT

* **STT 1 (Thiết kế kiến trúc 3 lớp):** Hoàn thành — Hoàn thiện phân tầng Core - Distribution - Access và WLC HA.
* **STT 2 (Mô phỏng Packet Tracer):** Hoàn thành — Mô phỏng đầy đủ toàn bộ luồng dữ liệu Campus WLAN.
* **STT 3 (Quy hoạch VLAN & Roaming):** Hoàn thành — Thiết lập chuyển vùng nhanh 802.11r/k/v với độ trễ < 50ms.

---

## 3. Kế hoạch tuần tiếp theo

| STT | Nhiệm vụ cụ thể | Mức ưu tiên | Hạn hoàn thành | Sản phẩm dự kiến bàn giao |
|:---:|:---|:---:|:---:|:---|
| 1 | Tổng hợp bảng so sánh định lượng các chỉ số kỹ thuật trước và sau tối ưu | Cao | Tuần 5 | Bảng đối sánh hiệu năng hệ thống |
| 2 | Soạn thảo Chương 4 (Kết luận và Hướng phát triển) | Cao | Tuần 5 | Bản thảo Chương 4 trên LaTeX |
| 3 | Chạy công cụ kiểm tra tính nhất quán trích dẫn BibTeX | Vừa | Tuần 5 | Báo cáo kiểm tra trích dẫn sạch 100% |
