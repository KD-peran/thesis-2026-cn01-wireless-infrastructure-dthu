# Ấn Phẩm & Bản In Khóa Luận Chính Thức

> **Mục đích:** Trang tổng hợp các ấn phẩm học thuật chính thức được biên dịch từ mã nguồn LaTeX chuẩn quốc tế của đề tài Khóa luận Tốt nghiệp.

---

## 1. Báo Cáo Khóa Luận Tốt Nghiệp (Toàn văn)

Bản in chính thức được định dạng theo quy cách nghiêm ngặt của Trường Đại học Đồng Tháp và Bộ Giáo dục & Đào tạo (Phông chữ Times New Roman 12pt, dãn dòng 1.5, lề trái 3.5cm, đầy đủ danh mục hình vẽ, bảng biểu và trích dẫn chuẩn BibLaTeX/Biber).

* **Tên tệp:** `khoa-luan.pdf`
* **Dung lượng:** ~6.4 MB
* **Số trang:** 56 trang
* **Trạng thái:** Đã biên dịch hoàn tất, không có lỗi cảnh báo học thuật.
* **Tải về:** [⬇️ Tải xuống Báo cáo Khóa luận (PDF)](downloads/khoa-luan.pdf ':ignore')

---

## 2. Slide Thuyết Trình Bảo Vệ (Beamer Presentation)

Bộ slide trình bày súc tích trong 20 phút bảo vệ trước Hội đồng chấm khóa luận tốt nghiệp, tích hợp sơ đồ phân cấp 3 lớp, bảng số liệu thực nghiệm đo kiểm trước/sau tối ưu và bản demo mô phỏng Cisco Packet Tracer.

* **Tên tệp:** `slide-bao-ve.pdf`
* **Dung lượng:** ~355 KB
* **Số trang:** 23 slide Beamer
* **Chủ đề màu:** DTHU Navy & Cyan
* **Tải về:** [⬇️ Tải xuống Slide Bảo Vệ (PDF)](downloads/slide-bao-ve.pdf ':ignore')

---

## 3. Cách Biên Dịch Lại Từ Mã Nguồn LaTeX

Nếu quý Thầy/Cô hoặc Sinh viên muốn tự biên dịch lại từ mã nguồn:

```powershell
# Chạy từ thư mục gốc của repository
.\tool.ps1
# Nhập [2] để biên dịch Báo cáo Khóa luận
# Nhập [3] để biên dịch Slide Bảo vệ
# Hoặc nhập [5] / [A] để tự động biên dịch cả hai và đồng bộ sang docs/downloads/
```

Mọi tệp PDF xuất ra sẽ nằm tại thư mục `latex/outputs/` và tự động cập nhật sang `docs/downloads/`.
