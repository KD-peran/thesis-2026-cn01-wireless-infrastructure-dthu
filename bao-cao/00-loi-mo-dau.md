# Lời Mở Đầu

> **Mục đích:** Trình bày tính cấp thiết của đề tài, mục tiêu nghiên cứu, đối tượng, phạm vi, phương pháp nghiên cứu và ý nghĩa thực tiễn của công trình khóa luận tốt nghiệp.

---

## 1. Tính Cấp Thiết Của Đề Tài

Trong bối cảnh chuyển đổi số giáo dục đại học diễn ra mạnh mẽ, mạng không dây (WLAN / Wi-Fi) đã trở thành một cấu phần hạ tầng công nghệ thông tin cốt lõi, phục vụ trực tiếp công tác quản lý đào tạo, giảng dạy số, nghiên cứu khoa học và học tập trực tuyến. Các hoạt động học liệu số, tra cứu thư viện điện tử, lớp học thông minh và đăng ký tín chỉ trực tuyến đều phụ thuộc chặt chẽ vào một môi trường kết nối vô tuyến ổn định, tốc độ cao và an toàn.

Trường Đại học Đồng Tháp (DTHU) hiện là một cơ sở đào tạo đại học trọng điểm với quy mô hơn 15.000 sinh viên, học viên cùng đội ngũ cán bộ, giảng viên đông đảo. Thực tế xu hướng mang thiết bị cá nhân (BYOD — *Bring Your Own Device*) ngày càng phổ biến: mỗi sinh viên khi đến giảng đường thường sử dụng đồng thời từ 1 đến 2 thiết bị kết nối mạng (laptop, điện thoại thông minh, máy tính bảng). Sự gia tăng đột biến về mật độ kết nối vô tuyến này đã và đang tạo ra áp lực cực kỳ lớn lên hạ tầng mạng không dây hiện hữu của Nhà trường.

Tuy nhiên, qua khảo sát thực tế, hệ thống Wi-Fi tại trường được triển khai theo từng giai đoạn đơn lẻ, thiếu quy hoạch tổng thể ngay từ đầu. Điều này dẫn đến hàng loạt bất cập kỹ thuật nghiêm trọng:
* Hiện tượng nghẽn mạng cục bộ trong các khung giờ cao điểm (sáng từ 09h30 — 10h30, chiều từ 14h00 — 15h30): Thiết bị di động của sinh viên báo sóng Wi-Fi "đầy vạch" nhưng hoàn toàn không thể truy cập Internet do bộ điều khiển trung tâm cạn kiệt tài nguyên cấp phát IP.
* Tình trạng can nhiễu đồng kênh (Co-channel Interference) và chồng lấn dải tần 2.4 GHz diễn ra trầm trọng tại các khu vực giảng đường mật độ cao (như Tòa A1, Tòa C2, Căn tin B5), làm suy giảm hơn 70% thông lượng đường truyền.
* Sự xuất hiện của các thiết bị phát sóng dân dụng ngoại lai (Rogue AP) do các đơn vị tự phát lắp đặt, tiềm ẩn nguy cơ xung đột DHCP và lỗ hổng mất an toàn thông tin nội bộ.

Trước những thách thức trên, việc triển khai đề tài **“Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp”** là một nhiệm vụ cấp thiết, mang tính thời sự cao, nhằm đem lại giải pháp nâng cấp toàn diện, khoa học và khả thi cho Nhà trường.

---

## 2. Mục Tiêu Nghiên Cứu

### 2.1. Mục tiêu tổng quát
Khảo sát, phân tích và đánh giá khoa học hiện trạng hạ tầng mạng không dây tại Trường Đại học Đồng Tháp; từ đó thiết kế kiến trúc tổng thể mạng không dây quy mô doanh nghiệp (Enterprise WLAN) phù hợp, nâng cao năng lực chịu tải, triệt tiêu can nhiễu, tối ưu hóa chuyển vùng (Fast Roaming) và đảm bảo an toàn thông tin.

### 2.2. Mục tiêu cụ thể
* Hệ thống hóa cơ sở lý thuyết về mạng WLAN, các thế hệ chuẩn IEEE 802.11 (đặc biệt là công nghệ Wi-Fi 6 — 802.11ax), kiến trúc điều khiển tập trung WLC và cơ chế chuyển vùng mượt mà 802.11r/k/v.
* Khảo sát thực địa toàn diện mặt bằng kiến trúc và hệ thống thiết bị Access Point (AP) tại các khối tòa nhà DTHU (A1, A2, A7, A8, A9, B1, B2, B3, B4, B5, B6, H1, H2, H3, Thư viện, C1, C2).
* Tiến hành đo kiểm định lượng phổ sóng vô tuyến (RSSI, SNR bằng Wi-Fi Analyzer) và thông lượng mạng (Download, Upload, Ping bằng Speedtest) theo các khung giờ cao điểm và thấp điểm.
* Bóc tách chính xác 3 điểm nghẽn kỹ thuật cốt lõi của hệ thống mạng hiện hành.
* Đề xuất mô hình thiết kế kiến trúc phân cấp 3 lớp chuẩn mực, nâng cấp WLC, quy hoạch chuẩn Wi-Fi 6, cấu trúc VLAN/Subnet /20, chiến lược rút ngắn DHCP Lease Time và phương thức xác thực tập trung 802.1X/RADIUS.
* Xây dựng mô hình mô phỏng hệ thống trên phần mềm chuyên dụng Cisco Packet Tracer, thực hiện kiểm chứng và đánh giá định lượng các chỉ số hiệu năng trước và sau tối ưu.

---

## 3. Đối Tượng Và Phạm Vi Nghiên Cứu

### 3.1. Đối tượng nghiên cứu
* Công nghệ mạng cục bộ không dây (WLAN), hệ thống các tiêu chuẩn IEEE 802.11 (802.11a/b/g/n/ac/ax/be).
* Kiến trúc quản lý mạng tập trung qua bộ điều khiển WLC (Wireless LAN Controller), giao thức điều khiển điểm truy cập CAPWAP và thuật toán quản lý tài nguyên vô tuyến tự động RRM.
* Hạ tầng mạng không dây thực tế tại Trường Đại học Đồng Tháp (thiết bị điều khiển Motorola RFS6000, các trạm phát sóng AP, hạ tầng Switch phân phối, cơ chế cấp phát IP và định tuyến Internet).

### 3.2. Phạm vi nghiên cứu
* **Phạm vi không gian:** Tập trung khảo sát, đo kiểm thực địa tại các khu vực phục vụ giảng dạy, học tập lý thuyết, thực hành, quản lý hành chính và sinh hoạt chung thuộc khuôn viên Trường Đại học Đồng Tháp.
* **Phạm vi chuyên môn:** Nghiên cứu giới hạn trong việc khảo sát hiện trạng, đo kiểm phổ sóng, chẩn đoán điểm nghẽn, xây dựng giải pháp thiết kế kiến trúc và mô phỏng kiểm chứng trên phần mềm Cisco Packet Tracer. Đề tài không tiến hành mua sắm thay thế hay thi công lắp đặt phần cứng thực tế trên toàn trường do vượt quá phạm vi ngân sách học phần Khóa luận tốt nghiệp.

---

## 4. Phương Pháp Nghiên Cứu

Đề tài kết hợp chặt chẽ giữa nghiên cứu lý thuyết và khảo nghiệm thực tiễn:
1. **Phương pháp nghiên cứu lý thuyết:** Thu thập, tổng hợp và phân tích các bộ tiêu chuẩn quốc tế IEEE, các tài liệu hướng dẫn thiết kế mạng Enterprise của Cisco, các giáo trình chuyên ngành mạng máy tính nhằm xây dựng khung lý thuyết chuẩn tắc.
2. **Phương pháp khảo sát thực địa:** Trực tiếp đi hiện trường ghi nhận vị trí AP, lập bản đồ định vị trên mặt bằng các tòa nhà; sử dụng công cụ Wi-Fi Analyzer để quét phổ tần vô tuyến và ứng dụng Speedtest đo thông lượng mạng qua 5 lần lấy mẫu trung bình.
3. **Phương pháp phân tích và mô hình hóa:** Thống kê số liệu, đối chiếu giữa giờ cao điểm và thấp điểm để xác định điểm nghẽn; sử dụng Cisco Packet Tracer 8.x để số hóa toàn bộ kiến trúc mạng và kiểm nghiệm các kịch bản lưu lượng.
4. **Phương pháp so sánh, đánh giá định lượng:** Đưa ra các tiêu chí kỹ thuật rõ ràng để so sánh đối chứng hiệu quả vận hành giữa hiện trạng và phương án thiết kế mới.

---

## 5. Ý Nghĩa Khoa Học Và Thực Tiễn Của Đề Tài

### 5.1. Ý nghĩa khoa học
Khóa luận góp phần hệ thống hóa cơ sở khoa học về thiết kế và tối ưu mạng không dây quy mô doanh nghiệp trong môi trường mật độ người dùng cao (High Density Campus WLAN). Làm sáng tỏ cơ chế hoạt động của các công nghệ tối ưu băng thông trong chuẩn Wi-Fi 6 (OFDMA, MU-MIMO, BSS Coloring) và các giao thức chuyển vùng nhanh (IEEE 802.11r/k/v).

### 5.2. Ý nghĩa thực tiễn
* Cung cấp bức tranh toàn cảnh và chính xác bằng số liệu đo kiểm khách quan về chất lượng mạng Wi-Fi tại Trường Đại học Đồng Tháp.
* Cung cấp bản thiết kế kỹ thuật hoàn chỉnh, có tính khả thi cao, tận dụng hạ tầng cáp và máy chủ LDAP sẵn có giúp tiết kiệm ngân sách đầu tư cho Nhà trường.
* Là tài liệu tham khảo có giá trị kỹ thuật cao phục vụ công tác quy hoạch, nâng cấp hạ tầng số của Nhà trường trong giai đoạn 2026 — 2030.

---

## 6. Bố Cục Của Khóa Luận

Nội dung chính của khóa luận được kết cấu chặt chẽ thành các chương:
* **Chương 1: Tổng quan bài toán và cơ sở công nghệ mạng không dây.** Trình bày cơ sở lý thuyết chuẩn IEEE 802.11, đột phá của chuẩn Wi-Fi 6 (OFDMA, MU-MIMO, BSS Color), kiến trúc WLC tập trung và cơ chế bảo mật 802.1X.
* **Chương 2: Khảo sát thực địa và đánh giá hiện trạng mạng DTHU.** Trình bày mặt bằng kiến trúc 14 khối nhà, đo kiểm sóng RSSI/SNR và thông lượng Speedtest, phân tích 3 điểm nghẽn kỹ thuật cốt lõi.
* **Chương 3: Hiện thực hóa, đánh giá an ninh và thực nghiệm.** Trình bày thiết kế kiến trúc phân cấp 3 lớp, WLC HA N+1, quy hoạch VLAN /20, mô phỏng Cisco Packet Tracer 8.x, kiểm thử định tuyến đa WAN và Client Isolation.
* **Chương 4: Kết luận và hướng phát triển.** Tổng kết các kết quả đạt được, chỉ ra những hạn chế và đề xuất lộ trình mở rộng trong tương lai.
* **Phụ lục:** Bảng dữ liệu đo kiểm thực địa chi tiết và kịch bản cấu hình mẫu.
