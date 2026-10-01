# ĐỀ CƯƠNG NGHIÊN CỨU KHÓA LUẬN TỐT NGHIỆP

**TRƯỜNG ĐẠI HỌC ĐỒNG THÁP**  
**KHOA CÔNG NGHỆ VÀ KỸ THUẬT**  
**Cộng Hòa Xã Hội Chủ Nghĩa Việt Nam — Độc Lập – Tự Do – Hạnh Phúc**

---

## 1. Thông tin chung

- **Tên đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
- **Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên
- **MSSV:** 0023410647
- **Lớp:** ĐHCNTT23B-CS
- **Ngành / Chuyên ngành:** Khoa học máy tính / Mạng Máy Tính và An Ninh
- **Khóa đào tạo:** 2023 – 2027
- **Giáo viên hướng dẫn:** TS. Lương Thái Ngọc
- **Thời gian thực hiện:** Từ 01/09/2026 đến 29/04/2027

---

## 2. Tổng quan đề tài

### 2.1. Lý do chọn đề tài

Trong những năm gần đây, mạng không dây đóng vai trò quan trọng trong việc cung cấp khả năng truy cập Internet và các dịch vụ mạng cho người dùng tại các trường đại học. Số lượng sinh viên, giảng viên và thiết bị truy cập mạng ngày càng tăng, đòi hỏi hệ thống mạng không dây phải có độ phủ rộng, khả năng đáp ứng số lượng người dùng lớn, tốc độ ổn định và đảm bảo khả năng mở rộng trong tương lai.

Tại Trường Đại học Đồng Tháp, mạng không dây được sử dụng tại nhiều khu vực như phòng học, giảng đường, phòng làm việc, thư viện và các khu vực sinh hoạt chung. Tuy nhiên, để đáp ứng tốt hơn nhu cầu sử dụng mạng ngày càng tăng, cần có sự khảo sát và đánh giá tổng thể về hạ tầng mạng không dây hiện tại.

Đề tài **“Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp”** được thực hiện nhằm khảo sát hiện trạng mạng không dây, phân tích những ưu điểm và hạn chế của hệ thống hiện tại, từ đó đưa ra phương án thiết kế kiến trúc mạng không dây phù hợp.

Đề tài tập trung vào việc xác định nhu cầu sử dụng mạng, đánh giá vùng phủ sóng, số lượng người dùng và thiết bị, tính toán số lượng Access Point (AP), đề xuất vị trí bố trí AP và xây dựng kiến trúc mạng không dây tổng thể. Sau đó, phương án thiết kế được mô phỏng và đánh giá nhằm làm cơ sở đề xuất giải pháp cải thiện hệ thống.

### 2.2. Vấn đề cần giải quyết

Đề tài tập trung giải quyết các vấn đề:
- Hạ tầng mạng không dây hiện tại của Trường Đại học Đồng Tháp có đặc điểm gì?
- Hệ thống hiện tại có đáp ứng được nhu cầu sử dụng của người dùng hay không?
- Những ưu điểm và hạn chế của hạ tầng mạng không dây hiện tại là gì?
- Cần bố trí số lượng và vị trí Access Point như thế nào để nâng cao khả năng phủ sóng và đáp ứng người dùng?
- Kiến trúc mạng không dây được đề xuất có những ưu điểm gì so với hiện trạng?

---

## 3. Mục tiêu đề tài

### 3.1. Mục tiêu tổng quát
Khảo sát, phân tích và đánh giá hiện trạng hạ tầng mạng không dây tại Trường Đại học Đồng Tháp; từ đó thiết kế kiến trúc tổng thể mạng không dây phù hợp nhằm nâng cao khả năng phủ sóng, đáp ứng số lượng người dùng và đảm bảo khả năng mở rộng.

### 3.2. Mục tiêu cụ thể
- Tìm hiểu cơ sở lý thuyết về mạng không dây và WLAN.
- Khảo sát hiện trạng hạ tầng mạng không dây tại Trường Đại học Đồng Tháp.
- Xác định các khu vực sử dụng mạng không dây, nhu cầu truy cập của người dùng.
- Phân tích ưu điểm và hạn chế của hệ thống hiện tại.
- Xác định các yêu cầu cần thiết đối với hệ thống mạng không dây.
- Tính toán số lượng Access Point cần thiết.
- Đề xuất vị trí bố trí các Access Point phù hợp.
- Thiết kế kiến trúc tổng thể hạ tầng mạng không dây.
- Mô phỏng phương án thiết kế trên phần mềm chuyên dụng (Cisco Packet Tracer).
- Đánh giá và so sánh phương án đề xuất với hiện trạng.
- Đề xuất các giải pháp cải thiện hạ tầng mạng không dây.

---

## 4. Đối tượng và phạm vi nghiên cứu

### 4.1. Đối tượng nghiên cứu
Đối tượng nghiên cứu của đề tài là hạ tầng mạng không dây tại Trường Đại học Đồng Tháp, tập trung vào:
- Mạng WLAN / Wi-Fi.
- Access Point (AP) và Bộ điều khiển mạng không dây (WLC).
- Thiết bị mạng liên quan (Core Switch, Distribution Switch, Access Switch, Router, Firewall).
- Kiến trúc kết nối mạng và quy hoạch kênh truyền / dải tần.
- Vùng phủ sóng (Coverage Area) và cường độ tín hiệu (RSSI, SNR).
- Số lượng người dùng và thiết bị truy cập đồng thời (Capacity & High Density).
- Khả năng đáp ứng, chuyển vùng (Roaming) và mở rộng của hệ thống.

### 4.2. Phạm vi nghiên cứu
- **Khu vực khảo sát:** Hạ tầng mạng không dây tại các khu vực thuộc Trường Đại học Đồng Tháp (Giảng đường A1, Hành chính B3, Căn tin/Không gian mở B5, Thư viện, Ký túc xá B6, các tòa H1, H2, H3, C1, C2,...).
- **Nội dung nghiên cứu:** Khảo sát hiện trạng; đo kiểm vùng phủ sóng và can nhiễu phổ vô tuyến; phân tích nhu cầu sử dụng; tính toán số lượng AP; đề xuất vị trí lắp đặt AP; thiết kế sơ đồ kiến trúc mạng; mô phỏng và đánh giá phương án thiết kế.
- **Giới hạn đề tài:** Đề tài không tập trung vào việc triển khai thay thế toàn bộ hệ thống Wi-Fi vật lý thực tế của nhà trường (do rào cản chi phí đầu tư cấp doanh nghiệp), mà chủ yếu xây dựng phương án thiết kế, phân tích kỹ thuật và đánh giá kiểm chứng trên mô hình mô phỏng Cisco Packet Tracer.

---

## 5. Nhiệm vụ nghiên cứu

- Tìm hiểu các kiến thức cơ bản về mạng không dây và WLAN.
- Tìm hiểu các tiêu chuẩn và nguyên tắc thiết kế mạng Wi-Fi (IEEE 802.11a/b/g/n/ac/ax/be, 802.11r/k/v).
- Khảo sát và thu thập thông tin về hạ tầng mạng không dây hiện tại của DTHU.
- Phân tích hiện trạng hệ thống mạng (thiết bị điều khiển WLC, AP, đường truyền).
- Đánh giá ưu điểm và hạn chế của hệ thống (nhiễu đồng kênh, nghẽn cổ chai, Rogue AP).
- Xác định yêu cầu thiết kế mạng Enterprise cho trường đại học.
- Phân chia các khu vực cần thiết kế mạng không dây theo đặc thù mật độ người dùng.
- Tính toán số lượng Access Point và xác định vị trí bố trí AP tối ưu.
- Xây dựng kiến trúc mạng không dây đề xuất (mô hình 3 lớp phân cấp, WLC tập trung, Wi-Fi 6, VLAN/Subnet, bảo mật 802.1X/RADIUS).
- Mô phỏng phương án thiết kế trên Cisco Packet Tracer.
- Đánh giá phương án sau khi thiết kế, so sánh giữa hệ thống hiện tại và đề xuất.
- Đề xuất giải pháp cải thiện và lộ trình triển khai.
- Hoàn thiện báo cáo khóa luận và chuẩn bị bảo vệ.

---

## 6. Phương pháp nghiên cứu

1. **Phương pháp nghiên cứu tài liệu:** Thu thập và nghiên cứu các tài liệu liên quan đến WLAN, Wi-Fi, Access Point, vùng phủ sóng, tiêu chuẩn IEEE 802.11 và các phương pháp thiết kế mạng không dây quy mô doanh nghiệp.
2. **Phương pháp khảo sát thực địa:** Khảo sát hiện trạng mạng không dây tại Trường Đại học Đồng Tháp, bao gồm vị trí AP, khu vực sử dụng, thiết bị mạng, vùng phủ sóng và nhu cầu sử dụng của người dùng.
3. **Phương pháp phân tích và đánh giá:** Phân tích dữ liệu thu thập được để đánh giá hiện trạng, xác định ưu nhược điểm, các khu vực có vấn đề về vùng phủ sóng, can nhiễu dải tần 2.4 GHz hoặc quá tải kết nối.
4. **Phương pháp tính toán kỹ thuật:** Tính toán số lượng và vị trí bố trí Access Point dựa trên diện tích khu vực, phạm vi vùng phủ sóng, số lượng người dùng và nhu cầu băng thông mạng.
5. **Phương pháp mô phỏng:** Xây dựng mô hình mạng không dây theo phương án đề xuất bằng phần mềm Cisco Packet Tracer nhằm kiểm tra kiến trúc mạng, phương án kết nối, cấu hình VLAN, DHCP và định tuyến.
6. **Phương pháp so sánh và đối chiếu:** So sánh giữa hiện trạng và phương án thiết kế đề xuất dựa trên các tiêu chí: vùng phủ sóng, số lượng AP, năng lực chịu tải đồng thời, chất lượng kết nối (RSSI, SNR, Throughput, Ping) và khả năng mở rộng.

---

## 7. Bố cục dự kiến của khóa luận

Báo cáo khóa luận được tổ chức gồm:
- **Lời mở đầu:** Tính cấp thiết của đề tài, mục tiêu nghiên cứu, đối tượng và phạm vi nghiên cứu, phương pháp nghiên cứu, ý nghĩa khoa học và thực tiễn, bố cục khóa luận.
- **Chương 1. Tổng quan và cơ sở lý thuyết mạng không dây:** Trình bày tổng quan về mạng không dây, các thành phần và mô hình hoạt động của WLAN (BSS, ESS, IBSS). Cơ chế truy nhập kênh CSMA/CA, RTS/CTS, Beacon frame. Băng tần, kênh truyền và nhiễu trong WLAN. Các chuẩn IEEE 802.11 tiêu biểu (802.11a/b/g/n/ac/ax/be), kiến trúc quản lý tập trung WLC, CAPWAP và bảo mật WPA2/WPA3.
- **Chương 2. Khảo sát và đánh giá hiện trạng mạng không dây tại Trường Đại học Đồng Tháp:** Giới thiệu tổng quan hệ thống mạng không dây DTHU. Khảo sát hạ tầng thiết bị (bộ điều khiển trung tâm RFS6000, hệ thống AP tại các tòa A1, A2, A7, A8, A9, A4, B1, B2, B3, B4, B5, B6, H1, H2, H3, Thư viện, C1, C2...). Phân tích vùng phủ sóng và can nhiễu vô tuyến (Wi-Fi Analyzer). Khảo sát tốc độ, hiệu năng (Speedtest) và năng lực chịu tải. Phân tích 3 điểm nghẽn cốt lõi: quá tải WLC, can nhiễu đồng kênh, thiết bị ngoại lai Rogue AP.
- **Chương 3. Thiết kế kiến trúc tổng thể, mô phỏng và đề xuất giải pháp:** Nguyên tắc thiết kế (High Availability, Scalability, Cost-effectiveness). Quy hoạch nâng cấp chuẩn Wi-Fi 6 (OFDMA, MU-MIMO, BSS Coloring). Nâng cấp bộ điều khiển trung tâm WLC (5.000 – 10.000 người dùng). Tối ưu hóa chuyển vùng Fast Roaming (802.11r/k/v). Phân hoạch mạng luận lý VLAN, IP Subnet /20, chiến lược DHCP Lease Time. Điều hướng lưu lượng đa WAN, chính sách bảo mật xác thực tập trung 802.1X/RADIUS. Hạ tầng cáp Cat6/6A và cấp nguồn PoE+. Xây dựng mô hình mô phỏng trên Cisco Packet Tracer và đánh giá định lượng hiệu quả trước/sau tối ưu. Lộ trình triển khai 3 giai đoạn.
- **Kết luận và hướng phát triển:** Đánh giá mức độ hoàn thành mục tiêu, hạn chế của đề tài và định hướng phát triển (triển khai thí điểm PoC, tích hợp AI AIOps, Captive Portal, chuẩn bị đón đầu Wi-Fi 7).
- **Tài liệu tham khảo & Phụ lục.**

---

## 8. Phần mềm và công cụ sử dụng

| STT | Phần mềm / Công cụ | Mục đích sử dụng |
|:---:|:---|:---|
| 1 | **Cisco Packet Tracer** | Mô phỏng kiến trúc mạng, cấu hình WLC, AP, Switch Core, Router, DHCP và kiểm thử lưu lượng |
| 2 | **Wi-Fi Analyzer** | Khảo sát thực địa vùng phủ sóng, đo cường độ tín hiệu RSSI, kiểm tra nhiễu đồng kênh và phát hiện Rogue AP |
| 3 | **SpeedZEN / Speedtest** | Đo kiểm định lượng thông lượng (Throughput) Download/Upload và độ trễ phản hồi (Ping/Latency) |
| 4 | **Draw.io / MS Visio** | Vẽ sơ đồ kiến trúc mạng tổng thể, sơ đồ phân cấp 3 lớp, lưu đồ giải thuật và sơ đồ luồng dữ liệu |
| 5 | **Microsoft Excel** | Tổng hợp số liệu đo kiểm, tính toán dung lượng AP, phân tích dữ liệu thống kê |
| 6 | **Wireshark** | Bắt gói tin và phân tích luồng dữ liệu mạng, khảo sát giao thức kết nối khi cần thiết |
| 7 | **TeXstudio / MiKTeX (LaTeX)** | Soạn thảo báo cáo khóa luận tốt nghiệp và slide thuyết trình bảo vệ chuẩn học thuật |
| 8 | **Node.js / PowerShell Scripts** | Bộ công cụ tự động hóa xuất PDF báo cáo tiến độ tuần và tài liệu tổng hợp |

---

## 9. Kế hoạch thực hiện chi tiết

| STT | Thời gian | Công việc thực hiện | Sản phẩm dự kiến | Người thực hiện |
|:---:|:---|:---|:---|:---:|
| 1 | **01/09/2026 – 30/09/2026** | Tìm hiểu đề tài, nghiên cứu cơ sở lý thuyết, xác định mục tiêu, đối tượng và phạm vi nghiên cứu; hoàn thiện kế hoạch, đề cương KLTN. | Bản kế hoạch nghiên cứu, Đơn đăng ký Mẫu 1a, Đề cương nghiên cứu Mẫu 3. | Nguyễn Thị Kỳ Duyên |
| 2 | **01/10/2026 – 31/10/2026** | Nghiên cứu sâu cơ sở lý thuyết WLAN, Wi-Fi 6, WLC, Fast Roaming; xây dựng đề cương chi tiết chương và phương pháp khảo sát. | Bản tổng hợp lý thuyết cơ sở, bảng câu hỏi và phương án đo kiểm thực địa. | Nguyễn Thị Kỳ Duyên |
| 3 | **01/11/2026 – 30/11/2026** | Khảo sát hiện trạng hạ tầng mạng không dây DTHU; thu thập dữ liệu vị trí AP, số lượng thiết bị, bản đồ mặt bằng các tòa nhà. | Tập dữ liệu khảo sát thực địa, sơ đồ hiện trạng AP các tòa nhà DTHU. | Nguyễn Thị Kỳ Duyên |
| 4 | **01/12/2026 – 31/12/2026** | Đo kiểm phổ sóng Wi-Fi Analyzer, đo tốc độ Speedtest giờ cao điểm/thấp điểm; phân tích ưu điểm, điểm nghẽn kỹ thuật. | Báo cáo phân tích hiện trạng, bảng thống kê RSSI, SNR, Throughput, Ping. | Nguyễn Thị Kỳ Duyên |
| 5 | **01/01/2027 – 28/02/2027** | Xây dựng phương án thiết kế kiến trúc mạng tổng thể; tính toán quy hoạch số lượng AP, vị trí lắp đặt, quy hoạch VLAN, IP, WLC. | Hồ sơ thiết kế kỹ thuật kiến trúc mạng không dây đề xuất. | Nguyễn Thị Kỳ Duyên |
| 6 | **01/03/2027 – 15/03/2027** | Xây dựng mô hình mô phỏng trên Cisco Packet Tracer; cấu hình WLC, AP, Switch, định tuyến đa WAN và kiểm thử phân bổ luồng dữ liệu. | File mô hình mô phỏng Cisco Packet Tracer (.pkt), kết quả kiểm thử kết nối. | Nguyễn Thị Kỳ Duyên |
| 7 | **16/03/2027 – 20/03/2027** | Đánh giá so sánh định lượng giữa hiện trạng và mô hình đề xuất; hoàn thiện giải pháp và lộ trình triển khai 3 giai đoạn. | Bảng so sánh định lượng trước/sau tối ưu, bản thảo hoàn chỉnh Chương 3. | Nguyễn Thị Kỳ Duyên |
| 8 | **21/04/2027 – 29/04/2027** | Hoàn thiện toàn văn báo cáo khóa luận, slide thuyết trình bảo vệ, kiểm tra liêm chính học thuật; chuẩn bị và thực hiện bảo vệ. | Quyển Khóa luận tốt nghiệp hoàn chỉnh (PDF), Slide bảo vệ (PDF). | Nguyễn Thị Kỳ Duyên |

---

## 10. Tài liệu tham khảo chính

1. Khoa Công nghệ và Kỹ thuật — Trường Đại học Đồng Tháp, *Quy định, hướng dẫn và kế hoạch tổ chức Khóa luận tốt nghiệp năm học 2026–2027*, Lưu hành nội bộ, 2026.
2. Trường Đại học Đồng Tháp, *Tài liệu, sơ đồ và số liệu khảo sát hiện trạng hạ tầng mạng không dây tại Trường Đại học Đồng Tháp*, Tài liệu nội bộ, 2026.
3. IEEE, *IEEE Standard for Information Technology—Telecommunications and Information Exchange Between Systems Local and Metropolitan Area Networks—Specific Requirements—Part 11: Wireless LAN Medium Access Control (MAC) and Physical Layer (PHY) Specifications*, IEEE Std. 802.11-2020, 2020.
4. IEEE, *IEEE Standard for Information Technology—Part 11: Enhancements for High Efficiency WLAN*, IEEE Std. 802.11ax-2021, 2021.
5. J. F. Kurose and K. W. Ross, *Computer Networking: A Top-Down Approach*, 8th ed., Pearson, 2021.
6. W. Stallings, *Wireless Communications and Networks*, 2nd ed., Pearson, 2005.
7. Matthew S. Gast, *802.11 Wireless Networks: The Definitive Guide*, 2nd ed., O'Reilly Media, 2005.
8. Cisco Systems, *Cisco Wireless LAN Design Guide*, Cisco Systems Enterprise White Papers, 2021.
9. Cisco Systems, *Cisco Packet Tracer User Guide & Enterprise Simulation Guidelines*, Cisco Networking Academy, 2023.
10. G. Combs et al., *Wireshark Network Analysis & User's Guide*, Wireshark Foundation, 2022.
