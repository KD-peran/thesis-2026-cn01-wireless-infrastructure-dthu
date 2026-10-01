# DỮ LIỆU ĐO KIỂM THỰC ĐỊA VÀ KẾT QUẢ THỰC NGHIỆM

**Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp  
**Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: 0023410647 — Lớp: ĐHCNTT23B-CS)  

---

## 1. Mục đích thư mục

Thư mục `thuc-nghiem/` lưu trữ dữ liệu khoa học thực tế:
- Nhật ký đo kiểm phổ sóng vô tuyến (Wi-Fi Analyzer logs, hình ảnh phổ tần).
- Kết quả đo thông lượng (Throughput) Download/Upload và độ trễ Ping từ Speedtest.
- Số liệu thống kê tải lượng kết nối theo khung giờ và các bảng đối chiếu hiệu năng.

---

## 2. Cấu trúc dữ liệu

- `khao-sat-wifi/`: Chứa file nhật ký quét sóng vô tuyến tại Giảng đường A1, Hành chính B3, Căn tin B5, Thư viện.
- `du-lieu/`: Chứa các file bảng tính Excel (`.xlsx`, `.csv`) tổng hợp 5 lần lấy mẫu tốc độ mạng.
- `ket-qua/`: Kết quả phân tích định lượng, bảng đối soát hiệu năng trước và sau tối ưu.
