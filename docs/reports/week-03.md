# Báo Cáo Tiến Độ Tuần 03

* **Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
* **Sinh viên:** Nguyễn Thị Kỳ Duyên (MSSV: 0023410647) — **Lớp:** ĐHCNTT23B-CS
* **Giảng viên hướng dẫn:** TS. Lương Thái Ngọc
* **Thời gian thực hiện:** Tuần 3

---

## 1. Kết quả tuần vừa rồi

* Đã tiến hành khảo sát thực địa tại 14 khối công trình trong khuôn viên DTHU (Giảng đường A1, C2, B1–B6, H1–H3, Thư viện).
* Thu thập dữ liệu cường độ sóng RSSI, độ can nhiễu SNR trên băng tần 2.4 GHz và 5 GHz bằng ứng dụng Wi-Fi Analyzer.
* Đo kiểm thông lượng mạng (Download/Upload) và độ trễ Ping bằng Speedtest trên laptop Intel Wi-Fi 6 AX201.
* Phát hiện chính xác điểm nghẽn kỹ thuật: WLC Motorola RFS6000 nghẽn tải CPU khi vượt quá 250 AP, hiện tượng can nhiễu đồng kênh 2.4 GHz nghiêm trọng giữa các phòng học nằm sát nhau.
* Minh chứng đối chiếu: Tệp [latex/chuong/02-khao-sat-va-danh-gia-hien-trang-mang-dthu.tex](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/latex/chuong/02-khao-sat-va-danh-gia-hien-trang-mang-dthu.tex) và dữ liệu trong `thuc-nghiem/du-lieu/`.

---

## 2. Tóm tắt ngắn về kết quả tuần trước theo từng STT

* **STT 1 (Thu thập sơ đồ mặt bằng):** Hoàn thành — Thu thập đầy đủ 14 bản vẽ bố trí không gian khuôn viên DTHU.
* **STT 2 (Đo kiểm thực địa):** Hoàn thành — Hoàn tất 14 điểm đo tại các khu vực trọng yếu trong giờ cao điểm.
* **STT 3 (Khảo sát phần cứng WLC cũ):** Hoàn thành — Xác định rõ giới hạn chỉ chịu được tối đa 256 AP và 2.000 kết nối đồng thời.

---

## 3. Kế hoạch tuần tiếp theo

| STT | Nhiệm vụ cụ thể | Mức ưu tiên | Hạn hoàn thành | Sản phẩm dự kiến bàn giao |
|:---:|:---|:---:|:---:|:---|
| 1 | Thiết kế kiến trúc phân cấp 3 lớp Enterprise Campus WLAN | Cao | Tuần 4 | Sơ đồ khối kiến trúc phân cấp 3 lớp |
| 2 | Xây dựng mô hình mô phỏng trên Cisco Packet Tracer 8.x | Cao | Tuần 4 | Tệp mô phỏng mạng `.pkt` |
| 3 | Cấu hình quy hoạch VLAN, DHCP lease time và Fast Roaming 802.11r/k/v | Cao | Tuần 4 | Bản đặc tả phân hoạch dải IP và WLC HA |
