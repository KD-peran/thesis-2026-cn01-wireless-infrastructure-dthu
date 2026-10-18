# Chương 3: Hiện Thực Hóa, Đánh Giá An Ninh và Thực Nghiệm

> **Mục đích:** Đặc tả chi tiết phương án thiết kế kiến trúc phân cấp 3 lớp Enterprise Campus WLAN, nâng cấp bộ điều khiển WLC High Availability N+1, quy hoạch Wi-Fi 6, phân vùng VLAN/Subnet /20, cơ chế Fast Roaming 802.11r/k/v, xác thực tập trung 802.1X/FreeRADIUS, mô phỏng trên Cisco Packet Tracer 8.x và bảng đánh giá định lượng trước/sau tối ưu.

---

## 3.1. Nguyên Tắc và Mô Hình Thiết Kế Kiến Trúc Tổng Thể

### 3.1.1. Ba nguyên tắc thiết kế nền tảng
1. **Tính sẵn sàng cao (High Availability — HA):** Dự phòng N+1 Active-Standby cho WLC, Core Switch và đa đường truyền Internet (Viettel, VNPT, FPT), đảm bảo thời gian chuyển mạch khi xảy ra sự cố dưới 1 giây.
2. **Khả năng mở rộng linh hoạt (Scalability):** Thiết kế có tầm nhìn 5 năm (2026 — 2030), sẵn sàng dung nạp từ 5.000 đến 10.000 thiết bị kết nối đồng thời.
3. **Tối ưu hóa chi phí đầu tư (Cost-effectiveness):** Đầu tư AP Wi-Fi 6 thế hệ mới tại các điểm nóng mật độ cao (A1, C2, B5, Thư viện); tái điều chuyển các AP Wi-Fi 5 hiện có cho các phòng ban hành chính ít người; tận dụng máy chủ LDAP/FreeRADIUS nội bộ.

### 3.1.2. Mô hình kiến trúc phân cấp 3 lớp (Campus WLAN)
* **Lớp Lõi (Core Layer):** Cụm Switch Core Lớp 3 tốc độ cao (Switching Capacity ≥ 128 Gbps), liên kết cáp quang 10 Gbps giữa các khối nhà về trung tâm dữ liệu và định tuyến liên VLAN.
* **Lớp Phân phối (Distribution Layer):** Đặt tại các khối nhà lớn (Khối A, Khối B, Khối H, Khối C & Thư viện), áp dụng chính sách bảo mật ACL, chính sách QoS và định tuyến Internet PBR.
* **Lớp Truy cập (Access Layer) & WLAN:** Các Switch Access cấp nguồn **PoE+ (IEEE 802.3at)** kết nối cáp Cat6A tới các trạm phát sóng Wi-Fi 6 quản trị tập trung qua WLC bằng đường hầm CAPWAP.

---

## 3.2. Quy Hoạch Chuẩn Hóa Thiết Bị Phát Sóng Wi-Fi 6

* **Khu vực Giảng đường lớn (A1, C2):** Trang bị AP Wi-Fi 6 High-Density hỗ trợ MU-MIMO 4×4 và OFDMA chia nhỏ kênh thành 37 Resource Units (RU), phục vụ ổn định 150 — 200 thiết bị/AP mà không nghẽn hàng đợi.
* **Khu vực Căn tin mở B5 và Thư viện:** Lắp đặt AP Wi-Fi 6 anten định hướng và kích hoạt tính năng **BSS Coloring**, giúp các máy trạm bỏ qua tín hiệu can nhiễu từ các AP xung quanh, duy trì thông lượng trên 50 Mbps.
* **Khu vực phòng ban hành chính:** Tái sử dụng các AP chuẩn 802.11ac hiện có, tiết kiệm trên 40% chi phí mua sắm.

---

## 3.3. Dự Báo Tải Lượng và Giải Pháp Nâng Cấp WLC High Availability (N+1)

### Bảng dự báo tăng trưởng thiết bị WLAN DTHU (2026 — 2030):

| Chỉ tiêu dự báo kỹ thuật | Năm 2026 | Năm 2028 | Năm 2030 |
|:---|:---:|:---:|:---:|
| Quy mô sinh viên và cán bộ giảng viên | 15.000 | 16.500 | 18.000 |
| Hệ số thiết bị cá nhân (BYOD/người) | 1.2 thiết bị | 1.5 thiết bị | 1.8 thiết bị |
| Tổng số thiết bị tiềm năng toàn trường | 18.000 thiết bị | 24.750 thiết bị | 32.400 thiết bị |
| **Lưu lượng kết nối đồng thời đỉnh điểm (30%)** | **≈ 5.400 thiết bị** | **≈ 7.400 thiết bị** | **≈ 9.700 thiết bị** |

Khóa luận đề xuất trang bị cặp WLC thế hệ mới dung lượng 500 AP / 10.000 Client hoạt động theo cơ chế **Stateful Switchover (SSO) N+1 Active-Standby**, đồng bộ liên tục phiên kết nối của người dùng qua giao diện RMI chuyên dụng.

---

## 3.4. Tối Ưu Hóa Phân Hoạch Vùng Mạng VLAN và Chiến Lược Cấp Phát IP

Để ngăn chặn triệt để hiện tượng cạn kiệt địa chỉ IP và bão quảng bá Broadcast, hệ thống phân chia thành các VLAN độc lập:

| Tên phân vùng mạng | VLAN ID | Địa chỉ mạng IP (Subnet) | Mặt nạ mạng (Subnet Mask) | Thời hạn cấp IP (DHCP Lease Time) |
|:---|:---:|:---:|:---:|:---:|
| Ban Giám Hiệu & Cán Bộ | **10** | `172.16.10.0/23` | `255.255.254.0` (510 IP) | 8 ngày (Cố định, ổn định) |
| Toàn thể Sinh Viên DTHU | **20** | `172.16.20.0/20` | `255.255.240.0` (4.094 IP) | **2 giờ** (Thu hồi xoay vòng nhanh) |
| Khách Vãng Lai & Hội Thảo | **30** | `172.16.40.0/22` | `255.255.252.0` (1.022 IP) | **1 giờ** (Chống cạn kiệt IP) |
| Quản Trị Hệ Thống & WLC | **50** | `172.16.50.0/24` | `255.255.255.0` (254 IP) | IP tĩnh |
| Camera Giám Sát & IoT | **60** | `172.16.60.0/23` | `255.255.254.0` (510 IP) | Tĩnh theo địa chỉ MAC |

Việc cấu hình dải mạng sinh viên `/20` cung cấp hơn 4.000 IP kết hợp rút ngắn Lease Time xuống **2 giờ** giải quyết dứt điểm lỗi "Obtaining IP address..." vào giờ cao điểm.

---

## 3.5. Cơ Chế Chuyển Vùng Không Gián Đoạn Fast Roaming (IEEE 802.11r/k/v)

* **802.11k:** AP gửi bản tin danh sách AP lân cận tối ưu nhất.
* **802.11v:** WLC chủ động ra lệnh chuyển trạm khi RSSI tụt dưới -75 dBm.
* **802.11r:** Bỏ qua khâu xác thực RADIUS đầy đủ, tái sử dụng khóa bảo mật PMK trong bộ nhớ đệm, đưa thời gian chuyển vùng xuống dưới **45 mili-giây**, đảm bảo cuộc gọi Teams/Zalo và phiên học trực tuyến không bị gián đoạn.

---

## 3.6. Tăng Cường Bảo Mật 802.1X/EAP-PEAP và Cô Lập Người Dùng (Client Isolation)

* **Xác thực định danh 802.1X:** Triển khai SSID `DTHU_STUDENT` và `DTHU_STAFF` sử dụng WPA2/WPA3-Enterprise, kết nối máy chủ FreeRADIUS tích hợp cơ sở dữ liệu sinh viên. Mỗi người dùng sở hữu khóa mã hóa phiên PTK riêng biệt, triệt tiêu nguy cơ bắt gói tin nghe lén.
* **Cô lập máy trạm (Client Isolation):** Ngăn chặn các thiết bị trong cùng một SSID tấn công quét cổng, phát tán mã độc hoặc giả mạo ARP Spoofing lẫn nhau.

---

## 3.7. Hiện Thực Hóa Mô Hình Mô Phỏng Trên Cisco Packet Tracer 8.x

Toàn bộ kiến trúc mạng phân cấp 3 lớp, bộ điều khiển WLC HA, máy chủ DHCP, máy chủ FreeRADIUS và các trạm phát sóng Wi-Fi đã được mô hình hóa và kiểm thử hoàn chỉnh trên Cisco Packet Tracer:
* **Kiểm thử định tuyến đa WAN (Viettel, VNPT, FPT):** Định tuyến lưu lượng theo chính sách PBR, cân bằng tải và tự động chuyển hướng dự phòng khi đứt cáp quang.
* **Kiểm thử cấp phát DHCP và VLAN:** Cấp phát chính xác dải IP theo VLAN ID được trả về từ máy chủ RADIUS Access-Accept.
* **Kiểm thử cô lập Client Isolation:** Máy trạm SV1 không thể ping tới SV2 trong cùng phòng học, nhưng vẫn truy cập Internet và máy chủ học liệu bình thường.

---

## 3.8. Đánh Giá Định Lượng So Sánh Trước và Sau Khi Áp Dụng Giải Pháp

| Chỉ tiêu kỹ thuật đo lường | Trước khi tối ưu (Hạ tầng cũ) | Sau khi tối ưu (Kiến trúc đề xuất) | Mức độ cải thiện |
|:---|:---|:---|:---:|
| **Chuẩn công nghệ Wi-Fi** | Wi-Fi 4 (802.11n) & Wi-Fi 5 (802.11ac) | **Wi-Fi 6 (802.11ax)** | Vượt trội thế hệ |
| **Dung lượng chịu tải AP** | 30 — 50 thiết bị / AP | **150 — 200 thiết bị / AP** | **Tăng gấp 4 lần** |
| **Băng thông trung bình** | 3 — 5 Mbps (Tụt < 1 Mbps cao điểm) | **45 — 85 Mbps** (Ổn định cao điểm) | **Tăng gấp 15 lần** |
| **Thời gian chuyển vùng** | 2.500 — 4.000 ms (Rớt mạng) | **< 45 ms** (Chuyển mạch tức thì) | **Nhanh hơn 70 lần** |
| **Độ trễ truyền gói (Ping)** | 120 — 350 ms | **15 — 30 ms** | **Giảm 80% độ trễ** |
| **Bảo mật và Định danh** | Mật khẩu chung WPA-PSK (Dễ lộ) | **WPA2/WPA3-Enterprise 802.1X** | An toàn tuyệt đối |
| **Độ sẵn sàng hệ thống** | Đơn lẻ (Dễ sập toàn bộ) | **WLC HA N+1 Active-Standby** | Dự phòng 99.99% |
