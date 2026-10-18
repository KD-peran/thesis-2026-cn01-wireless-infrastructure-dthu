# Chương 1: Tổng Quan Bài Toán và Cơ Sở Công Nghệ Mạng Không Dây

> **Mục đích:** Hệ thống hóa cơ sở lý thuyết chuẩn hóa quốc tế về mạng cục bộ không dây (WLAN), các mô hình kiến trúc BSS/ESS, cơ chế truy nhập môi trường CSMA/CA, phổ tần và can nhiễu, các thế hệ chuẩn IEEE 802.11 (đặc biệt là công nghệ đột phá Wi-Fi 6), kiến trúc điều khiển tập trung qua WLC và các chuẩn bảo mật 802.1X.

---

## 1.1. Tổng Quan Về Mạng Cục Bộ Không Dây (WLAN)

### 1.1.1. Khái niệm và đặc tính kỹ thuật
Mạng cục bộ không dây (Wireless Local Area Network — WLAN) là hệ thống mạng máy tính cho phép hai hay nhiều thiết bị kết nối và truyền thông tin với nhau thông qua môi trường sóng vô tuyến (Radio Frequency — RF) thay vì sử dụng cáp truyền dẫn vật lý truyền thống. Chuẩn hóa quốc tế của mạng WLAN được quản lý bởi Viện Kỹ sư Điện và Điện tử (IEEE) thông qua bộ tiêu chuẩn IEEE 802.11, thường được biết đến trên thị trường với thương hiệu Wi-Fi.

So với mạng có dây truyền thống (Ethernet IEEE 802.3), mạng WLAN sở hữu các đặc tính kỹ thuật nổi bật:
* **Tính di động và linh hoạt cao:** Người dùng có thể tự do di chuyển trong phạm vi vùng phủ sóng của các điểm truy cập (Access Point — AP) mà không bị ngắt quãng liên lạc logic.
* **Khả năng triển khai thuận tiện:** Giảm thiểu đáng kể thời gian và chi phí kéo cáp mạng qua các cấu trúc xây dựng phức tạp như tường dày, trần bê tông hay các khu vực mở ngoài trời.
* **Khả năng mở rộng dễ dàng:** Việc mở rộng vùng phủ sóng hoặc bổ sung thiết bị đầu cuối vào hệ thống được thực hiện nhanh chóng thông qua việc tích hợp thêm các trạm phát sóng mới.
* **Thách thức về môi trường chia sẻ:** Do dữ liệu truyền lan trong không gian tự do, băng thông mạng là tài nguyên dùng chung. Hiệu năng truyền tải chịu tác động lớn của hiện tượng suy hao đường truyền (Path Loss), phản xạ đa đường (Multipath Fading) và can nhiễu sóng vô tuyến.

### 1.1.2. Phân loại mạng không dây theo phạm vi phủ sóng
1. **WPAN (Wireless Personal Area Network):** Bán kính bao phủ dưới 10m (Bluetooth IEEE 802.15.1, ZigBee IEEE 802.15.4).
2. **WLAN (Wireless Local Area Network):** Phạm vi phủ sóng từ vài chục mét đến hàng trăm mét (IEEE 802.11a/b/g/n/ac/ax), thích hợp cho khuôn viên trường học, doanh nghiệp và tòa nhà.
3. **WMAN (Wireless Metropolitan Area Network):** Mạng đô thị không dây (WiMAX IEEE 802.16).
4. **WWAN (Wireless Wide Area Network):** Mạng diện rộng không dây qua tế bào di động (4G LTE, 5G).

---

## 1.2. Các Mô Hình Kiến Trúc Hoạt Động Của IEEE 802.11

Mạng WLAN IEEE 802.11 được tổ chức xoay quanh đơn vị cơ bản là Service Set (Tập dịch vụ):
* **Mô hình mạng cơ sở (Basic Service Set — BSS):** Bao gồm một trạm phát Access Point (AP) cố định và các trạm máy tính/thiết bị di động (STA) kết nối trực tiếp. Mọi luồng dữ liệu đều chuyển tiếp qua AP. Mỗi BSS được định danh bằng BSSID (địa chỉ MAC của card vô tuyến AP).
* **Mô hình mạng mở rộng (Extended Service Set — ESS):** Kết hợp nhiều BSS lại với nhau thông qua hệ thống phân phối chung (Distribution System — DS), liên kết qua mạng chuyển mạch có dây Ethernet. Tất cả AP dùng chung một tên mạng SSID, cho phép người dùng di chuyển giữa các AP mà không mất phiên làm việc.
* **Mô hình mạng độc lập (Independent BSS — IBSS):** Mạng Ad-hoc không có trạm AP trung tâm, các thiết bị STA giao tiếp ngang hàng trực tiếp.

---

## 1.3. Cơ Chế Truy Nhập Môi Trường Truyền Dẫn

Do đặc tính bán song công (Half-Duplex) của card mạng vô tuyến và hiện tượng máy trạm ẩn (Hidden Node Problem), IEEE 802.11 không thể dùng cơ chế CSMA/CD của Ethernet mà bắt buộc sử dụng **CSMA/CA (Carrier Sense Multiple Access with Collision Avoidance)**:
* **Cảm nhận sóng mang vật lý và ảo:** Lắng nghe năng lượng vô tuyến và sử dụng bộ đếm NAV (Network Allocation Vector).
* **Khoảng cách giữa các khung (IFS):** SIFS (ngắn nhất, dùng cho ACK/CTS), PIFS (ưu tiên), DIFS (truy nhập dữ liệu thông thường).
* **Cơ chế lùi ngẫu nhiên (Random Backoff Timer):** Tránh việc nhiều thiết bị cùng phát tín hiệu ngay khi đường truyền vừa rảnh.
* **Bắt tay RTS/CTS (Request To Send / Clear To Send):** Giải quyết triệt để vấn đề xung đột khi hai trạm ở xa nhau nhưng cùng phát tới một AP.

---

## 1.4. Phổ Tần Vô Tuyến Và Bài Toán Can Nhiễu

Mạng Wi-Fi hoạt động trên hai băng tần chính miễn cấp phép (ISM Band):
* **Băng tần 2.4 GHz (2.400 — 2.4835 GHz):** Tổng cộng 14 kênh, khoảng cách kênh chỉ 5 MHz trong khi độ rộng kênh cần thiết là 20 MHz hoặc 22 MHz. Chỉ có 3 kênh không chồng lấn là **Kênh 1, Kênh 6 và Kênh 11**. Khi mật độ AP dày đặc, hiện tượng can nhiễu đồng kênh (Co-channel Interference — CCI) xuất hiện nghiêm trọng, khiến thông lượng tụt dốc.
* **Băng tần 5 GHz (5.150 — 5.825 GHz):** Không gian tần số rộng lớn hơn nhiều, cung cấp từ 24 đến 25 kênh không chồng lấn (20 MHz) thuộc các phân đoạn UNII-1, UNII-2, UNII-2 Extended và UNII-3, giảm thiểu tối đa hiện tượng nghẽn sóng.

---

## 1.5. Sự Phát Triển Của Tiêu Chuẩn IEEE 802.11 Và Đột Phá Wi-Fi 6

| Tiêu chuẩn IEEE | Tên thương mại | Năm ban hành | Băng tần hỗ trợ | Kỹ thuật điều chế | Băng thông kênh | Tốc độ tối đa lý thuyết |
|:---|:---:|:---:|:---:|:---:|:---:|:---:|
| **IEEE 802.11b** | Wi-Fi 1 | 1999 | 2.4 GHz | DSSS, CCK | 20 MHz | 11 Mbps |
| **IEEE 802.11a** | Wi-Fi 2 | 1999 | 5 GHz | OFDM (64-QAM) | 20 MHz | 54 Mbps |
| **IEEE 802.11g** | Wi-Fi 3 | 2003 | 2.4 GHz | OFDM, DSSS | 20 MHz | 54 Mbps |
| **IEEE 802.11n** | Wi-Fi 4 | 2009 | 2.4 & 5 GHz | MIMO-OFDM | 20, 40 MHz | 600 Mbps |
| **IEEE 802.11ac** | Wi-Fi 5 | 2013 | 5 GHz | 256-QAM, MU-MIMO | 20, 40, 80, 160 MHz | 6.93 Gbps |
| **IEEE 802.11ax** | **Wi-Fi 6** | 2019 | **2.4 & 5 GHz** | **1024-QAM, OFDMA** | **20, 40, 80, 160 MHz** | **9.6 Gbps** |

### Các đột phá cốt lõi của Wi-Fi 6 (IEEE 802.11ax):
1. **OFDMA (Orthogonal Frequency Division Multiple Access):** Chia nhỏ kênh truyền thành các Resource Units (RU) từ 26 đến 996 tone, cho phép một khung truyền chứa đồng thời dữ liệu của hàng chục thiết bị, giải quyết nghẽn hàng đợi trong giảng đường đông sinh viên.
2. **MU-MIMO hai chiều:** Cho phép AP giao tiếp đồng thời với tối đa 8 thiết bị cả ở chiều tải xuống (Downlink) và tải lên (Uplink).
3. **BSS Coloring:** Gán nhãn màu số từ 1 đến 63 cho mỗi BSS, giúp thiết bị phân biệt sóng của AP phục vụ với sóng của AP lân cận để bỏ qua can nhiễu.
4. **Target Wake Time (TWT):** Lập lịch thời gian thức/ngủ cho thiết bị, giúp tiết kiệm pin cho điện thoại và cảm biến IoT.

---

## 1.6. Kiến Trúc Quản Lý Tập Trung WLC Và Giao Thức CAPWAP

Thay vì cấu hình từng AP độc lập (Autonomous AP) tốn công sức và dễ sai sót, mô hình mạng doanh nghiệp sử dụng **WLC (Wireless LAN Controller)** kết hợp **Lightweight AP (LAP)**:
* **Mặt phẳng điều khiển (Control Plane):** Đặt tại WLC, đảm nhiệm quản lý cấu hình, thuật toán gán kênh DCA, kiểm soát công suất phát TPC, quản lý roaming và chính sách bảo mật.
* **Mặt phẳng dữ liệu (Data Plane):** Có thể chạy chế độ Centralized (dữ liệu đi qua WLC) hoặc FlexConnect / Local Switching (dữ liệu đi thẳng vào Switch PoE cục bộ).
* **Giao thức CAPWAP (RFC 5415/5416):** Thiết lập đường hầm UDP (cổng 5246 cho Control và cổng 5247 cho Data) được mã hóa DTLS bảo mật giữa AP và WLC.

---

## 1.7. Cơ Chế Chuyển Vùng Nhanh (Fast Roaming)

* **IEEE 802.11k (Radio Resource Measurement):** Cung cấp danh sách AP lân cận (Neighbor Report) để thiết bị không phải quét toàn dải tần.
* **IEEE 802.11v (Wireless Network Management):** Hỗ trợ chuyển tiếp BSS (BSS Transition Management), giúp WLC điều hướng thiết bị sang AP có tải nhẹ hơn.
* **IEEE 802.11r (Fast BSS Transition):** Lưu trữ bộ nhớ đệm khóa an ninh PMK-R0 và PMK-R1, giảm thời gian chuyển mạch xuống dưới 50ms, không làm gián đoạn cuộc gọi thoại hay phiên học trực tuyến.

---

## 1.8. An Toàn Thông Tin Trong Mạng Không Dây

* **WPA-Personal (Pre-Shared Key):** Phù hợp gia đình nhưng không an toàn trong môi trường đại học vì nguy cơ rò rỉ mật khẩu và lộ khóa mã hóa phiên truyền.
* **WPA2/WPA3-Enterprise (IEEE 802.1X):** Sử dụng kiến trúc 3 thành phần (Supplicant, Authenticator, Authentication Server). Mỗi sinh viên đăng nhập bằng tài khoản và mật khẩu cá nhân qua giao thức EAP-PEAP (hoặc EAP-TLS), tạo khóa mã hóa PTK độc lập, ngăn chặn hoàn toàn nghe lén gói tin.
