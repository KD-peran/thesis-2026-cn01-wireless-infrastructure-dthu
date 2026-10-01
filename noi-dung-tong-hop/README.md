# NỘI DUNG TỔNG HỢP VÀ CÔNG CỤ VẼ SƠ ĐỒ PIPELINE

**Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp  
**Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: 0023410647 — Lớp: ĐHCNTT23B-CS)  

---

## 1. Mục đích thư mục

Thư mục `noi-dung-tong-hop/` có 2 nhiệm vụ chiến lược:
1. **Lưu trữ tài liệu tham khảo cốt lõi:** Luận văn tốt nghiệp khóa trước tại DTHU và chuyên đề nghiên cứu chuẩn IEEE 802.11 trong thư mục con `tai-lieu-tham-khao/`.
2. **Hệ thống hóa tài liệu kiến trúc toàn diện:** Tài liệu hợp nhất toàn bộ giải pháp kỹ thuật, sơ đồ phân cấp 3 lớp, quy trình xác thực 802.1X/RADIUS, cơ chế Fast Roaming 802.11r/k/v, phân hoạch VLAN/IP Subnet /20.
3. **Pipeline tự động hóa (Tool trong Tool):** Trích xuất tự động các khối sơ đồ Mermaid trong Markdown, xuất ảnh PNG độ phân giải cao và tạo ra file PDF tổng hợp hoàn chỉnh.

---

## 2. Cách thức khởi chạy

Sử dụng script menu trung tâm:
- Chạy `.\tool.ps1` ở thư mục gốc và chọn:
  - `[1]`: Chạy toàn bộ pipeline tự động (Mermaid -> PNG -> PDF).
  - `[2]`: Chỉ vẽ sơ đồ Mermaid sang PNG.
  - `[3]`: Xuất Markdown sang PDF trực tiếp.

Hoặc chạy dòng lệnh trực tiếp:
```powershell
cd noi-dung-tong-hop
powershell -ExecutionPolicy Bypass -File .\tool\export-pdf.ps1 -DirectOnly
```
