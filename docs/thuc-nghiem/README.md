# Dữ Liệu Đo Kiểm Thực Nghiệm & Đánh Giá Định Lượng

> **Mục đích:** Tổng hợp toàn bộ dữ liệu khảo sát thực địa tại 14 khối công trình Trường Đại học Đồng Tháp, đối soát các chỉ số kỹ thuật vô tuyến (RSSI, SNR, Throughput, Ping, Packet Loss) và bảng so sánh định lượng trước/sau khi triển khai kiến trúc Wi-Fi 6 và WLC HA.

---

## 1. Phương Pháp và Thiết Bị Đo Kiểm Thực Địa

Để đảm bảo tính khách quan và liêm chính học thuật (không bịa số liệu theo quy chuẩn `AGENTS.md`), quá trình đo kiểm được chuẩn hóa theo quy trình sau:
* **Thiết bị đo kiểm máy trạm:** Máy tính xách tay trang bị card mạng **Intel Wi-Fi 6 AX201 160MHz** kết hợp điện thoại thông minh hỗ trợ quét phổ tần vô tuyến.
* **Công cụ đo kiểm vô tuyến:** **Wi-Fi Analyzer** để quét các kênh sóng 2.4 GHz và 5 GHz, đo cường độ tín hiệu nhận được (RSSI) và tỷ số tín hiệu trên nhiễu (SNR).
* **Công cụ đo kiểm thông lượng & độ trễ:** **SpeedZEN / Speedtest** đo thông lượng tải xuống (Download Throughput), tải lên (Upload Throughput) và độ trễ phản hồi (Ping/Latency).
* **Phương thức lấy mẫu:** Tại mỗi vị trí khảo sát, tiến hành đo lặp lại **05 lần liên tiếp** tại hai khung giờ:
  * **Giờ thấp điểm (06h00 – 07h30):** Mật độ người dùng ít ($\sim 40 – 50$ người/khu vực), phản ánh năng lực đường truyền lý thuyết.
  * **Giờ cao điểm (09h00 – 11h30):** Mật độ người dùng đông ($\sim 150 – 300$ người/khu vực), phản ánh khả năng chịu tải và mức độ can nhiễu.

---

## 2. Bảng Tổng Hợp Số Liệu Đo Kiểm Thực Địa Tại Các Khu Vực Trọng Điểm

| STT | Khu vực khảo sát | Băng tần | Mật độ người | Cường độ sóng (RSSI) | Tỷ số SNR | Download (Mbps) | Upload (Mbps) | Độ trễ Ping (ms) | Đánh giá hiện trạng |
|:---:|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---|
| 1 | **Giảng đường A1 (P.102)** | 2.4 GHz | $\sim 300$ (Cao điểm) | -78 dBm | 14 dB | **5.19** | **6.98** | **110.0** | Nghẽn sóng, chập chờn |
| 2 | **Giảng đường A1 (Hành lang)** | 2.4 GHz | $\sim 50$ (Thấp điểm) | -58 dBm | 32 dB | 20.08 | 18.02 | 23.4 | Khá ổn định |
| 3 | **Hành chính B3 (P.204)** | 2.4 GHz | $\sim 150$ (Cao điểm) | -82 dBm | 11 dB | **15.35** | **16.45** | **130.0** | Suy hao do tường dày |
| 4 | **Hành chính B3 (Sảnh chính)** | 5 GHz | $\sim 40$ (Thấp điểm) | -62 dBm | 30 dB | 23.89 | 20.18 | 28.9 | Ổn định |
| 5 | **Căn tin B5 (Giờ giải lao)** | 2.4 GHz | $\sim 200$ (Cao điểm) | -65 dBm | 18 dB | **9.09** | **10.29** | **100.0** | Hỗn loạn tín hiệu |
| 6 | **Căn tin B5 (Sáng sớm)** | 2.4 GHz | $\sim 40$ (Thấp điểm) | -64 dBm | 26 dB | 19.80 | 18.89 | 20.0 | Tốt khi ít người |
| 7 | **Thư viện Lê Vũ Hùng (Tầng 1)** | 5 GHz | $\sim 120$ | -62 dBm | 30 dB | 22.40 | 12.10 | 24.5 | Khá tốt |
| 8 | **Tòa cao tầng H3 (P. CTSV)** | 2.4 GHz | $\sim 80$ | -74 dBm | 16 dB | 8.40 | 7.10 | 95.0 | Can nhiễu giữa các tầng |

---

## 3. Chẩn Đoán Ba Điểm Nghẽn Kỹ Thuật Cốt Lõi

1. **Điểm nghẽn 1: Bộ điều khiển trung tâm WLC RFS6000 quá tải nghiêm trọng**
   * Giới hạn phần cứng Motorola RFS6000 chỉ chịu được tối đa 256 AP và $\sim 2.000$ client.
   * Giờ cao điểm trường có hơn 2.300 thiết bị truy cập, khiến CPU WLC chạm ngưỡng 95% – 100%, gây hiện tượng từ chối cấp IP (DHCP Timeout) dù máy báo sóng đầy vạch.
2. **Điểm nghẽn 2: Can nhiễu phổ vô tuyến dải 2.4 GHz và suy giảm thời gian truyền sóng (Airtime)**
   * Hơn 80% AP hiện hành chỉ phát sóng chuẩn cũ 802.11n dải 2.4 GHz với 3 kênh duy nhất (1, 6, 11).
   * Trong không gian mở như Căn tin B5 và hành lang Giảng đường A1, các AP phát sóng đè lên nhau gây Co-channel Interference, làm thông lượng thực tế tụt giảm đến 74%.
3. **Điểm nghẽn 3: Rủi ro an ninh từ Rogue AP và bảo mật mật khẩu dùng chung**
   * Sử dụng WPA2-PSK (chung 1 mật khẩu) khiến không thể quản lý định danh người dùng.
   * Xuất hiện các Router Wi-Fi dân dụng tự phát cắm vào mạng nội bộ, gây xung đột cấp phát IP DHCP và tiềm ẩn nguy cơ tấn công Man-in-the-Middle.

---

## 4. Bảng So Sánh Định Lượng Trước Và Sau Tối Ưu Hóa

| Chỉ số kỹ thuật | Hiện trạng (Khảo sát đo kiểm) | Đề xuất tối ưu (Wi-Fi 6 + WLC HA) | Mức độ cải thiện |
| :--- | :--- | :--- | :---: |
| **Năng lực chịu tải đồng thời** | $\sim 2.000$ client (Thường xuyên quá tải) | **$> 10.000$ client** (Dung nạp 500 APs) | **Tăng 5 lần** |
| **Băng thông trung bình/client** | 5 – 9 Mbps (Giờ cao điểm) | **$> 35$ Mbps** đồng đều mọi vị trí | **Tăng 4 – 7 lần** |
| **Độ trễ phản hồi (Ping)** | 100 – 130 ms (Giờ cao điểm) | **$< 30$ ms** (Triệt tiêu nghẽn nhờ OFDMA) | **Giảm 75%** |
| **Thời gian chuyển vùng (Roaming)** | 1.000 – 2.000 ms (Rớt kết nối) | **$< 50$ ms** (Fast Roaming 802.11r/k/v) | **Nhanh gấp 20 lần** |
| **Tỷ lệ mất gói tin (Packet Loss)** | 7% – 12% trong giờ cao điểm | **$< 2\%$** (Đảm bảo gọi Teams/Zoom) | **Triệt tiêu gián đoạn** |
| **Phương thức xác thực** | Mật khẩu dùng chung WPA2-PSK | **802.1X/EAP** với FreeRADIUS/LDAP | **Định danh 100%** |
| **Dự phòng hệ thống lõi** | Không có dự phòng (SPOF WLC & Core) | **Cụm WLC N+1 & Core Dual-Homing** | **Sẵn sàng 99.99%** |

---

## 5. Danh Mục Sơ Đồ Mặt Bằng & Biểu Đồ Đo Kiểm Thực Địa (51 Hình Ảnh)

Dưới đây là danh mục toàn bộ 51 sơ đồ vị trí lắp đặt Access Point tại các khối công trình và biểu đồ phân tích sóng vô tuyến thực tế tại Trường Đại học Đồng Tháp được số hóa trong Chương 2 của báo cáo khóa luận:

| Ký hiệu hình | Tên sơ đồ / Biểu đồ khảo sát thực địa | Khu vực / Tầng lầu | Tệp ảnh lưu trữ |
| :---: | :---|:---|:---:|
| **Hình 2.1** | Sơ đồ tổng thể khuôn viên Trường Đại học Đồng Tháp | Toàn trường | `dthu_fig-001.png` |
| **Hình 2.2** | Sơ đồ mạng tổng thể tại Trường Đại học Đồng Tháp | Toàn trường (Logic) | `dthu_fig-002.png` |
| **Hình 2.3** | Mô hình mô phỏng hạ tầng mạng trên Cisco Packet Tracer | Mô phỏng | `dthu_fig-003.png` |
| **Hình 2.4** | Sơ đồ vị trí lắp đặt Access Point tại Tòa C2 | Khối Giảng đường C2 | `dthu_fig-004.png` |
| **Hình 2.5** | Sơ đồ vị trí lắp đặt Access Point tại Tòa A1 | Khối Giảng đường A1 | `dthu_fig-005.png` |
| **Hình 2.6** | Sơ đồ vị trí lắp đặt Access Point tại Tòa A2 | Khối Phòng máy A2 | `dthu_fig-006.png` |
| **Hình 2.7** | Sơ đồ vị trí lắp đặt Access Point tại Tòa A7 | Khối Thực hành A7 | `dthu_fig-007.png` |
| **Hình 2.8** | Sơ đồ vị trí lắp đặt Access Point tại Tòa A8 | Khối Thí nghiệm A8 | `dthu_fig-008.png` |
| **Hình 2.9** | Sơ đồ vị trí lắp đặt Access Point tại Tòa A9 | Khối Thí nghiệm A9 | `dthu_fig-009.png` |
| **Hình 2.10** | Sơ đồ vị trí lắp đặt Access Point tại Tòa A4 | Khối Hành chính A4 | `dthu_fig-010.png` |
| **Hình 2.11** | Sơ đồ vị trí lắp đặt Access Point tại Tòa B1 | Khối Văn phòng B1 | `dthu_fig-011.png` |
| **Hình 2.12** | Sơ đồ vị trí lắp đặt Access Point tại Tòa B2 | Khối Văn phòng B2 | `dthu_fig-012.png` |
| **Hình 2.13** | Sơ đồ vị trí lắp đặt Access Point tại Tòa B3 | Khối Hành chính B3 | `dthu_fig-013.png` |
| **Hình 2.14** | Sơ đồ vị trí lắp đặt Access Point tại Tòa B5 | Căn tin mở B5 | `dthu_fig-014.png` |
| **Hình 2.15** | Sơ đồ vị trí lắp đặt Access Point tại KTX B6 | Ký túc xá B6 | `dthu_fig-015.png` |
| **Hình 2.16** | Sơ đồ vị trí lắp đặt Access Point tại T1 Tòa B4 | Tầng 1 Tòa B4 | `dthu_fig-016.png` |
| **Hình 2.17** | Sơ đồ vị trí lắp đặt Access Point tại T2 Tòa B4 | Tầng 2 Tòa B4 | `dthu_fig-017.png` |
| **Hình 2.18** | Sơ đồ vị trí lắp đặt Access Point tại T3 Tòa B4 | Tầng 3 Tòa B4 | `dthu_fig-018.png` |
| **Hình 2.19** | Sơ đồ vị trí lắp đặt Access Point tại Tầng Trệt H1 | Tầng Trệt H1 | `dthu_fig-019.png` |
| **Hình 2.20** | Sơ đồ vị trí lắp đặt Access Point tại T1H1 | Tầng 1 Tòa H1 | `dthu_fig-020.png` |
| **Hình 2.21** | Sơ đồ vị trí lắp đặt Access Point tại T2H1 | Tầng 2 Tòa H1 | `dthu_fig-021.png` |
| **Hình 2.22** | Sơ đồ vị trí lắp đặt Access Point tại T3H1 | Tầng 3 Tòa H1 | `dthu_fig-022.png` |
| **Hình 2.23** | Sơ đồ vị trí lắp đặt Access Point tại T4H1 | Tầng 4 Tòa H1 | `dthu_fig-023.png` |
| **Hình 2.24** | Sơ đồ vị trí lắp đặt Access Point tại T1H2 | Tầng 1 Tòa H2 | `dthu_fig-024.png` |
| **Hình 2.25** | Sơ đồ vị trí lắp đặt Access Point tại T2H2 | Tầng 2 Tòa H2 | `dthu_fig-025.png` |
| **Hình 2.26** | Sơ đồ vị trí lắp đặt Access Point tại T3H2 | Tầng 3 Tòa H2 | `dthu_fig-026.png` |
| **Hình 2.27** | Sơ đồ vị trí lắp đặt Access Point tại Tòa T4H2 | Tầng 4 Tòa H2 | `dthu_fig-027.png` |
| **Hình 2.28** | Sơ đồ vị trí lắp đặt Access Point tại Tòa T5H2 | Tầng 5 Tòa H2 | `dthu_fig-028.png` |
| **Hình 2.29** | Sơ đồ vị trí lắp đặt Access Point tại T1H3 | Tầng 1 Tòa H3 | `dthu_fig-029.png` |
| **Hình 2.30** | Sơ đồ vị trí lắp đặt Access Point tại T2H3 | Tầng 2 Tòa H3 | `dthu_fig-030.png` |
| **Hình 2.31** | Sơ đồ vị trí lắp đặt Access Point tại T3H3 | Tầng 3 Tòa H3 | `dthu_fig-031.png` |
| **Hình 2.32** | Sơ đồ vị trí lắp đặt Access Point tại T4H3 | Tầng 4 Tòa H3 | `dthu_fig-032.png` |
| **Hình 2.33** | Sơ đồ vị trí lắp đặt Access Point tại T5H3 | Tầng 5 Tòa H3 | `dthu_fig-033.png` |
| **Hình 2.34** | Sơ đồ vị trí lắp đặt Access Point tại T6H3 | Tầng 6 Tòa H3 | `dthu_fig-034.png` |
| **Hình 2.35** | Sơ đồ vị trí lắp đặt Access Point tại T7H3 | Tầng 7 Tòa H3 | `dthu_fig-035.png` |
| **Hình 2.36** | Sơ đồ vị trí lắp đặt Access Point tại T8H3 | Tầng 8 Tòa H3 | `dthu_fig-036.png` |
| **Hình 2.37** | Sơ đồ vị trí lắp đặt Access Point tại T9H3 | Tầng 9 Tòa H3 | `dthu_fig-037.png` |
| **Hình 2.38** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 1 Thư viện | Tầng 1 Thư viện | `dthu_fig-038.png` |
| **Hình 2.39** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 2 Thư viện | Tầng 2 Thư viện | `dthu_fig-039.png` |
| **Hình 2.40** | Sơ đồ vị trí lắp đặt Access Point tại GĐ1 | Giảng đường lớn 1 | `dthu_fig-040.png` |
| **Hình 2.41** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 1 GDQP | Tầng 1 GDQP | `dthu_fig-041.png` |
| **Hình 2.42** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 2 GDQP | Tầng 2 GDQP | `dthu_fig-042.png` |
| **Hình 2.43** | Sơ đồ vị trí lắp đặt Access Point tại Tòa T123 | Tòa T123 | `dthu_fig-043.png` |
| **Hình 2.44** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 1 Tòa C1 | Tầng 1 Tòa C1 | `dthu_fig-044.png` |
| **Hình 2.45** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 2 Tòa C1 | Tầng 2 Tòa C1 | `dthu_fig-045.png` |
| **Hình 2.46** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 3 Tòa C1 | Tầng 3 Tòa C1 | `dthu_fig-046.png` |
| **Hình 2.47** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 4 Tòa C1 | Tầng 4 Tòa C1 | `dthu_fig-047.png` |
| **Hình 2.48** | Sơ đồ vị trí lắp đặt Access Point tại Tầng 5 Tòa C1 | Tầng 5 Tòa C1 | `dthu_fig-048.png` |
| **Hình 2.49** | Biểu đồ quét sóng Wi-Fi thực tế tại Tòa A1 | Phổ sóng A1 (Nhiễu Kênh 6) | `dthu_fig-050.png` |
| **Hình 2.50** | Biểu đồ quét sóng Wi-Fi thực tế tại Tòa B3 | Phổ sóng B3 (Rogue AP) | `dthu_fig-051.png` |
| **Hình 2.51** | Biểu đồ quét sóng Wi-Fi thực tế tại Tòa B5 | Phổ sóng B5 (Hỗn loạn 2.4GHz) | `dthu_fig-052.png` |
