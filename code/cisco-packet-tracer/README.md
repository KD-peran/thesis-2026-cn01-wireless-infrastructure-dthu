# Mô Hình Mô Phỏng Hạ Tầng Mạng Campus WLAN Trên Cisco Packet Tracer 8.x

> **Mục đích:** Hướng dẫn mở và kiểm thử file topology mô phỏng toàn trường DTHU trên phần mềm Cisco Packet Tracer 8.x.

---

## 1. Danh Sách Thiết Bị Trong Mô Hình

* **Tầng Biên (Edge / WAN):** Router ISR 4331 kết nối 3 đường truyền giả lập ISP (Viettel, VNPT, FPT) qua cáp quang Serial/Gigabit.
* **Lớp Lõi (Core Layer):** Cụm Switch Lớp 3 Catalyst 3650/9300 chạy định tuyến OSPF và SVI VLAN 10, 20, 30, 40, 50.
* **Bộ điều khiển WLC:** Cisco 3504 / 5520 WLC quản trị AP tập trung qua giao thức CAPWAP.
* **Máy chủ dịch vụ:** Máy chủ FreeRADIUS (AAA 802.1X), Máy chủ DHCP Server và DNS.
* **Lớp Phân phối (Distribution):** Switch Catalyst 2960 đặt tại 4 cụm tòa nhà chính (Khối A, Khối B, Khối H, Khối C).
* **Lớp Truy cập (Access AP):** Các thiết bị Lightweight AP phát 2 SSID: `DTHU_STAFF` (WLAN 10) và `DTHU_STUDENT` (WLAN 20).

---

## 2. Các Kịch Bản Kiểm Thử Đã Thực Hiện

1. **Kiểm thử cấp phát IP tự động (DHCP Relay):** Thiết bị sinh viên kết nối vào AP nhận địa chỉ IP trong dải `172.16.20.0/20` qua gateway `172.16.20.1`.
2. **Kiểm thử xác thực 802.1X:** Thiết bị gửi tài khoản sinh viên `0023410647`, máy chủ FreeRADIUS phản hồi Access-Accept và tự động gán VLAN 20.
3. **Kiểm thử cô lập Client Isolation:** Ping giữa 2 máy trạm cùng kết nối SSID `DTHU_STUDENT` bị chặn (Request timed out), nhưng ping ra Internet và Server nội bộ thành công 100%.
4. **Kiểm thử dự phòng WAN:** Ngắt cổng kết nối ISP1 (Viettel), lưu lượng tự động chuyển sang ISP2 (VNPT) trong vòng dưới 1 giây.
