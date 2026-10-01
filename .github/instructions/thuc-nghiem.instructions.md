---
name: 'Thực nghiệm'
description: 'Quy tắc ghi dữ liệu và kết quả thực nghiệm'
applyTo: 'thuc-nghiem/**'
---

# Ghi thực nghiệm

## Nguyên tắc chi phối

Một con số trong báo cáo mà không truy được về đây thì con số đó không tồn tại.

## Không được làm

- **Không sinh số liệu kết quả.** Không điền giá trị ước lượng, giá trị "hợp lý", hay giá
  trị mẫu vào bảng kết quả. Chưa chạy thì để trống.
- **Không sửa số liệu đã ghi** để cho khớp với kỳ vọng hoặc với nội dung báo cáo.

## Mỗi lần chạy phải ghi bốn thứ

1. Cấu hình chạy: tham số, môi trường, phần cứng nếu ảnh hưởng kết quả.
2. Bộ dữ liệu đã dùng.
3. **Mã commit** của mã nguồn lúc chạy. Không có mã commit thì kết quả không lặp lại được.
4. Kết quả thu được, kèm đơn vị.

Đặt trong `ket-qua/YYYY-MM-DD_<ten-thuc-nghiem>/README.md`.

## Ghi cả lần chạy thất bại

Kết quả âm cũng là dữ liệu. Một phương án đã thử và không hiệu quả là nội dung tốt cho mục
bàn luận ở chương 5, và cho câu hỏi "vì sao không chọn cách kia" khi bảo vệ.

Không đề xuất xóa lần chạy thất bại.

## Dữ liệu thô

`thuc-nghiem/du-lieu/` không được commit, đã cấu hình trong `.gitignore`. Nhưng mọi bộ dữ
liệu phải được mô tả trong bảng ở `thuc-nghiem/README.md`, đủ chi tiết để người khác lấy
lại và tái tạo được thực nghiệm.

Dữ liệu thật của doanh nghiệp phải được ẩn danh trước khi dùng trong báo cáo.

## Chốt cách đo trước khi cài đặt

Bảng tiêu chí đánh giá ở mục 8 của `bao-cao/de-cuong-khoa-luan.md` phải điền xong trước khi
bắt đầu cài đặt. Chốt tiêu chí sau khi đã thấy kết quả là tự lừa mình, và hội đồng sẽ hỏi
ngay điểm này.
