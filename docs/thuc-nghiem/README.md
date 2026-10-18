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
