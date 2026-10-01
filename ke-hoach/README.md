# KẾ HOẠCH VÀ BÁO CÁO TIẾN ĐỘ HÀNG TUẦN

**Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp  
**Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: 0023410647 — Lớp: ĐHCNTT23B-CS)  
**Giảng viên hướng dẫn:** TS. Lương Thái Ngọc  

---

## 1. Mục đích thư mục

Thư mục `ke-hoach/` quản lý toàn bộ các bản báo cáo tiến độ thực hiện đề tài gửi GVHD theo định kỳ từng tuần:
- Quản lý nhật ký công việc đã thực hiện, đối chiếu với đề cương được duyệt.
- Tự động hóa chuyển đổi báo cáo Markdown sang tệp PDF có định dạng học thuật đẹp mắt, kèm tiêu đề nhận diện DTHU và khung chữ ký sinh viên.

---

## 2. Quy trình viết và xuất PDF báo cáo tiến độ tuần

1. **Tạo file mới:** Tạo tệp Markdown trong thư mục `ke-hoach/new/` theo mẫu:
   ```text
   ke-hoach/new/Weekly at DD-MM-YYYY.md
   ```
2. **Xuất file PDF:** Sử dụng một trong hai cách:
   - **Cách 1 (Qua Hub công cụ - Khuyến nghị):**
     Chạy `.\tool.ps1` ở thư mục gốc và chọn số `[4]`.
   - **Cách 2 (Trực tiếp bằng script):**
     ```powershell
     cd ke-hoach
     powershell -ExecutionPolicy Bypass -File .\tool\export-pdf.ps1
     ```
3. File PDF đầu ra sẽ tự động lưu ngay tại thư mục `ke-hoach/Weekly at DD-MM-YYYY.pdf`.
