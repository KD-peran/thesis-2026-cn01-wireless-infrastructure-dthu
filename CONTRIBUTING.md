# HƯỚNG DẪN QUẢN TRỊ DỰ ÁN VÀ ĐÓNG GÓP (CONTRIBUTING)

Dự án: **Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp**  
Sinh viên thực hiện: **Nguyễn Thị Kỳ Duyên** | Giảng viên hướng dẫn: **TS. Lương Thái Ngọc**

---

## 1. Nguyên tắc làm việc trên Git

- Nhánh chính là `main`. Mọi bổ sung hoặc hiệu chỉnh nội dung nên được commit rõ ràng với thông điệp súc tích bằng tiếng Anh (ví dụ: `docs(latex): update chapter 2 survey results`, `feat(tool): enhance PDF layout for weekly reports`).
- **Không commit các tệp rác và tệp tạm:**
  - File tạm sinh ra trong quá trình biên dịch LaTeX: `.aux`, `.log`, `.bcf`, `.bbl`, `.toc`, `.lof`, `.lot`, `.out`, `.synctex.gz`.
  - Tệp nhị phân lớn hoặc file HTML trung gian trong `ke-hoach/tool/` và `noi-dung-tong-hop/tool/`.
  - Thông tin đăng nhập, mật khẩu quản trị mạng hoặc file cấu hình chứa thông tin nhạy cảm.

---

## 2. Quy trình cập nhật nội dung học thuật

1. **Khi có số liệu đo kiểm mới:**
   - Cập nhật số liệu thô vào `thuc-nghiem/khao-sat-wifi/`.
   - Cập nhật bảng tổng hợp trong chương báo cáo `bao-cao/02-khao-sat-va-danh-gia-hien-trang.md`.
   - Đồng bộ số liệu vào file LaTeX `latex/chuong/02-khao-sat-va-danh-gia-hien-trang-mang-dthu.tex`.
2. **Khi cập nhật tài liệu tham khảo:**
   - Thêm bản ghi BibTeX đầy đủ (tác giả, tên tài liệu, năm xuất bản, tổ chức, DOI/URL nếu có) vào `bao-cao/tai-lieu-tham-khao.bib`.
   - Kiểm tra trích dẫn thông qua script:
     ```powershell
     python .github/scripts/kiem_tra_trich_dan.py
     ```
3. **Khi chuẩn bị báo cáo tiến độ tuần:**
   - Viết nội dung tuần mới vào `ke-hoach/new/Weekly at <DD-MM-YYYY>.md`.
   - Dùng lệnh số `[4]` trong `tool.ps1` để xuất ra file PDF hoàn chỉnh kèm khung chữ ký sinh viên.
