# Chương 4: Kết Luận và Hướng Phát Triển

> **Mục đích:** Tổng kết toàn diện các kết quả nghiên cứu và đóng góp kỹ thuật của đề tài, nêu rõ những hạn chế khách quan và đề xuất lộ trình phát triển trong tương lai.

---

## 4.1. Kết Luận Chung và Các Kết Quả Đạt Được

Khóa luận tốt nghiệp với đề tài **“Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp”** đã hoàn thành toàn diện 100% các mục tiêu và nhiệm vụ đã cam kết trong Đề cương nghiên cứu được Khoa Công nghệ và Kỹ thuật phê duyệt.

### Các đóng góp khoa học và thực tiễn chính:
1. **Hệ thống hóa cơ sở lý thuyết chuẩn hóa:**
   * Phân tích sâu sắc các nguyên lý kỹ thuật của mạng WLAN, cơ chế CSMA/CA tránh xung đột và bắt tay RTS/CTS.
   * Làm rõ bản chất đột phá của chuẩn **Wi-Fi 6 (IEEE 802.11ax)**: Đa truy nhập OFDMA, truyền tải đa luồng MU-MIMO hai chiều và tô màu định danh BSS Coloring trong giải quyết bài toán mật độ cao.
   * Hệ thống hóa kiến trúc quản trị tập trung WLC (CAPWAP) và bộ ba chuyển vùng nhanh IEEE 802.11r/k/v.
2. **Khảo sát thực địa và chẩn đoán chính xác hiện trạng DTHU:**
   * Thu thập và lập bản đồ vị trí lắp đặt AP tại 14 khối công trình trong khuôn viên trường.
   * Đo kiểm định lượng phổ sóng vô tuyến (RSSI, SNR) bằng Wi-Fi Analyzer và thông lượng Speedtest tại các khung giờ cao điểm và thấp điểm.
   * Chẩn đoán chính xác 3 điểm nghẽn cốt lõi: Năng lực bộ điều khiển Motorola RFS6000 bị chạm trần 2.000 thiết bị, can nhiễu đồng kênh nghiêm trọng trên dải 2.4 GHz làm giảm gần 74% tốc độ, và nguy cơ từ Rogue AP.
3. **Thiết kế kiến trúc phân cấp và giải pháp kỹ thuật khả thi:**
   * Xây dựng bản thiết kế 3 lớp phân cấp (Core — Distribution — Access) kết hợp mô hình WLC HA N+1 Active-Standby, sẵn sàng đáp ứng 5.000 đến 10.000 thiết bị kết nối đồng thời trong 5 năm tới.
   * Quy hoạch có trọng điểm chuẩn Wi-Fi 6 cho các điểm nóng và tái luân chuyển thiết bị chuẩn cũ cho các phòng ban hành chính ít người, tiết kiệm trên 40% chi phí.
   * Đề xuất phân hoạch mạng logic VLAN với không gian địa chỉ IP `/20` (hơn 4.000 IP cho sinh viên), kết hợp rút ngắn thời gian thuê DHCP Lease Time xuống 2 — 4 giờ để giải quyết dứt điểm lỗi cạn kiệt IP.
   * Chuyển đổi sang phương thức xác thực tập trung an toàn doanh nghiệp 802.1X/EAP trên nền FreeRADIUS/LDAP.
4. **Mô phỏng và kiểm chứng thực nghiệm:**
   * Số hóa và mô phỏng thành công toàn bộ kiến trúc trên Cisco Packet Tracer 8.x.
   * Kiểm chứng chuyển vùng Fast Roaming (độ trễ < 50ms), tính năng cô lập máy trạm Client Isolation và xây dựng bảng so sánh định lượng chứng minh tính vượt trội của giải pháp mới.

---

## 4.2. Hạn Chế Của Đề Tài

* **Hạn chế về điều kiện triển khai vật lý thực tế:** Do rào cản về kinh phí đầu tư thiết bị cấp doanh nghiệp, đề tài chưa thể tiến hành lắp đặt thử nghiệm trực tiếp các thiết bị Wi-Fi 6 và bộ điều khiển WLC trên hệ thống mạng thực của Nhà trường. Các số liệu đánh giá băng thông và khả năng chịu tải sau tối ưu hiện dừng lại ở mức mô phỏng kỹ thuật và dự phóng khoa học.
* **Giới hạn về thời gian lấy mẫu dữ liệu vô tuyến:** Các phép đo kiểm phổ sóng vô tuyến chủ yếu được thực hiện tại một số thời điểm cao điểm đại diện trong học kỳ, chưa bao quát được toàn bộ biến động lưu lượng liên tục trong cả năm học.
* **Thách thức về sự phân mảnh thiết bị người dùng (BYOD):** Hiệu năng thực tế của mạng Wi-Fi còn phụ thuộc vào phần cứng card mạng của các thiết bị do sinh viên sử dụng. Khi vẫn còn nhiều thiết bị đời cũ (chỉ hỗ trợ Wi-Fi 4 trên băng tần 2.4 GHz), hệ thống vẫn phải chia sẻ thời gian phát sóng để tương thích ngược.

---

## 4.3. Hướng Phát Triển Trong Tương Lai

1. **Triển khai thí điểm (Proof of Concept — PoC) tại Giảng đường A1:** Phối hợp với Trung tâm CNTT của Trường Đại học Đồng Tháp để lắp đặt thí điểm một cụm thiết bị Access Point Wi-Fi 6 kết nối WLC tại khu vực Giảng đường Tòa A1 để đo kiểm thực tế và đánh giá độ hài lòng của sinh viên.
2. **Ứng dụng Trí tuệ nhân tạo trong vận hành mạng (AIOps):** Tự động hóa phân tích nguyên nhân gốc rễ (Root Cause Analysis) qua Syslog và dự báo phụ tải mạng (Load Forecasting) theo thời khóa biểu học tập.
3. **Phát triển Cổng thông tin xác thực Captive Portal và Bản đồ nhiệt (Heatmap):** Tự động cập nhật bản đồ nhiệt vô tuyến và trang chào Captive Portal thông báo tin tức học tập của Nhà trường.
