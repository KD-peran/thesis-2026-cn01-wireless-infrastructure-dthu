# Chương 2: Khảo Sát Thực Địa và Đánh Giá Hiện Trạng Mạng DTHU

> **Mục đích:** Báo cáo chi tiết kết quả khảo sát thực địa tại 14 khối công trình Trường Đại học Đồng Tháp, phân tích hiện trạng phần cứng WLC Motorola RFS6000, số liệu quét sóng vô tuyến RSSI/SNR, kiểm thử thông lượng Speedtest và chẩn đoán 3 điểm nghẽn kỹ thuật cốt lõi.

---

## 2.1. Giới Thiệu Tổng Quan Hệ Thống Mạng Không Dây DTHU

Hệ thống mạng không dây tại Trường Đại học Đồng Tháp được triển khai nhằm phục vụ nhu cầu truy cập Internet cho cán bộ, giảng viên và hơn 15.000 sinh viên. Wi-Fi hiện diện ở hầu hết các khu vực như giảng đường, phòng thực hành, phòng làm việc hành chính, thư viện và các khu vực sinh hoạt chung.

### 2.1.1. Sơ đồ tổng thể khuôn viên DTHU
Khuôn viên nhà trường bao gồm các phân khu chức năng chính:
* **Khu học tập và giảng đường:** Gồm các khối nhà B1, B2, B3, A1, H1, H2, H3, C1, C2 phục vụ giảng dạy lý thuyết, phòng máy vi tính và các phòng thí nghiệm chuyên sâu.
* **Thư viện Học liệu Lê Vũ Hùng:** Không gian tự học và tra cứu thông tin số tập trung đông đảo sinh viên.
* **Khu thể thao và không gian chung:** Sân vận động, nhà thi đấu, hồ bơi, căn tin mở B5 và quảng trường A3.
* **Khu ký túc xá và sinh hoạt sinh viên:** Khối ký túc xá B6 và các nhà xe sinh viên.

---

## 2.2. Khảo Sát Hạ Tầng Thiết Bị Điều Khiển WLC Hiện Hành

Hệ thống mạng không dây hiện tại sử dụng thiết bị điều khiển **Motorola RFS6000 Wireless LAN Controller**:
* **Năng lực phần cứng:** Hỗ trợ quản lý tối đa 256 Access Point (AP) mỏng.
* **Số lượng kết nối đồng thời tối đa:** Khoảng 2.000 thiết bị client.
* **Thông lượng chuyển tiếp dữ liệu:** Giới hạn ở mức 2 Gbps.

> [!WARNING]
> **Điểm nghẽn phần cứng WLC:** Thiết bị Motorola RFS6000 được thiết kế từ hơn một thập kỷ trước. Với quy mô đào tạo hiện tại lên tới 15.000 người, trong các khung giờ cao điểm (khi hơn 3.000 thiết bị cùng truy cập), CPU của WLC luôn hoạt động ở mức 95% — 100%, dẫn đến hiện tượng trễ xử lý gói tin, chậm cấp phát địa chỉ IP và ngắt kết nối hàng loạt AP.

---

## 2.3. Khảo Sát Thực Địa Mặt Bằng Kiến Trúc và Vị Trí Lắp Đặt AP

Quá trình khảo sát đã ghi nhận vị trí lắp đặt và mật độ Access Point tại từng tòa nhà:
1. **Tòa A1 (Khu Giảng đường trung tâm):** 3 tầng, bố trí 6 AP chuẩn 802.11n dọc hành lang. Vách ngăn bê tông dày làm suy hao tín hiệu nghiêm trọng vào các phòng học phía trong.
2. **Tòa B3 (Khu Giảng đường lý thuyết):** 4 tầng, mật độ phòng học dày đặc. Tín hiệu sóng 2.4 GHz giữa các tầng bị can nhiễu đồng kênh nặng nề.
3. **Tòa B5 (Khu Căn tin mở):** Không gian mở rộng lớn, tập trung hơn 800 sinh viên giờ giải lao. Chỉ có 2 AP thông thường dẫn đến tình trạng cạn kiệt năng lực xử lý (High Density Overload).
4. **Tòa H3 (Tòa nhà cao tầng 9 tầng):** Phục vụ các khoa chuyên môn và văn phòng làm việc.

---

## 2.4. Số Liệu Đo Kiểm Thực Địa Định Lượng (Wi-Fi Analyzer & Speedtest)

Việc đo kiểm được thực hiện bằng ứng dụng chuyên dụng **Wi-Fi Analyzer** trên điện thoại di động và phần mềm **Speedtest** trên máy tính xách tay trang bị card mạng Intel Wi-Fi 6 AX201, lấy mẫu 5 lần trung bình tại các khung giờ cao điểm (09h30 — 10h30) và thấp điểm (07h00 — 08h00).

### Bảng tổng hợp số liệu đo kiểm tại các khu vực trọng điểm:

| Khu vực khảo sát | Băng tần đo | Cường độ sóng (RSSI) | Tỷ số SNR | Băng thông Download | Băng thông Upload | Độ trễ Ping | Đánh giá chất lượng |
|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---|
| **Giảng đường A1 (P.102)** | 2.4 GHz | -78 dBm | 14 dB | 2.8 Mbps | 1.1 Mbps | 128 ms | Kém (Can nhiễu cao) |
| **Giảng đường A1 (Hành lang)**| 2.4 GHz | -58 dBm | 32 dB | 8.4 Mbps | 4.2 Mbps | 45 ms | Tương đối ổn định |
| **Giảng đường B3 (P.204)** | 2.4 GHz | -82 dBm | 11 dB | 1.4 Mbps | 0.8 Mbps | 210 ms | Rất kém (Chập chờn) |
| **Căn tin B5 (Giờ cao điểm)** | 2.4 GHz | -65 dBm | 18 dB | 0.9 Mbps | 0.4 Mbps | 340 ms | Nghẽn hoàn toàn |
| **Căn tin B5 (Giờ thấp điểm)**| 2.4 GHz | -64 dBm | 26 dB | 14.5 Mbps | 8.2 Mbps | 32 ms | Tốt (Ít người dùng) |
| **Thư viện DTHU (Khu tự học)** | 5 GHz | -62 dBm | 30 dB | 22.4 Mbps | 12.1 Mbps | 24 ms | Khá tốt |

---

## 2.5. Chẩn Đoán Ba Điểm Nghẽn Kỹ Thuật Cốt Lõi

Qua số liệu định lượng thu thập được, đề tài bóc tách chính xác 3 nguyên nhân căn bản:

### 1. Nghẽn tài nguyên điều khiển và cạn kiệt dải IP DHCP
Thiết bị WLC Motorola RFS6000 không còn đủ năng lực xử lý cho lượng kết nối đồng thời lớn. Thời gian DHCP Lease Time mặc định quá dài (7 ngày) kết hợp dải mạng hẹp khiến kho địa chỉ IP nhanh chóng cạn kiệt trong 2 ngày đầu tuần.

### 2. Can nhiễu đồng kênh (Co-channel Interference) băng tần 2.4 GHz
Đại đa số AP đang phát sóng trên băng tần 2.4 GHz với cấu hình tự động không được tối ưu hóa. Các AP phát trùng kênh (đặc biệt là kênh 1, 6, 11) ở khoảng cách quá gần, gây ra hiện tượng cạnh tranh sóng mang liên tục, làm sụt giảm thông lượng thực tế tới hơn 70%.

### 3. Thiếu cơ chế chuyển vùng mượt mà và an toàn thông tin lỏng lẻo
Hệ thống chưa triển khai bộ giao thức Fast Roaming (IEEE 802.11r/k/v), khiến thiết bị ngắt kết nối từ 2 đến 4 giây mỗi khi người dùng di chuyển giữa các tòa nhà. Ngoài ra, việc dùng chung mật khẩu Pre-Shared Key (PSK) tiềm ẩn nguy cơ bảo mật nghiêm trọng và không kiểm soát được định danh người dùng.
