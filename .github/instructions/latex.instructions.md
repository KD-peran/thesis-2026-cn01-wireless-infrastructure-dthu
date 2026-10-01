---
name: 'Bản LaTeX'
description: 'Quy tắc soạn báo cáo và slide LaTeX cho khóa luận'
applyTo: 'latex/**/*.tex'
---

# Soạn bản LaTeX

## Bảng mã tiếng Việt

Dùng bộ ba `inputenc` UTF-8, `fontenc` T5, `babel` vietnamese. Tiếng Việt có dấu biên dịch
được bình thường, đã kiểm chứng bằng build thật. Không đổi sang bảng mã khác.

## Ba lỗi đã gặp, đừng lặp lại

**1. Trong tệp Beamer, không đặt `<...>` ngay sau `\item`.** Beamer hiểu đó là *overlay
specification*, không phải văn bản, và sẽ báo lỗi khi gặp ký tự có dấu. Placeholder trong
tệp Beamer viết là `TODO: ...` không có dấu ngoặc nhọn.

**2. `hyperref` cần tùy chọn `unicode`** khi tiêu đề mục có dấu, nếu không bookmark sẽ vỡ.

**3. `biber` báo lỗi khi danh mục tài liệu còn rỗng.** Script build đã xử lý bằng cách chỉ
cảnh báo rồi build tiếp. Đừng sửa script để bỏ qua lỗi biber thật.

## Quy trình

Nội dung chữ soạn trước ở `bao-cao/` dạng Markdown. Chỉ khi một chương đã ổn định mới
chuyển sang đây. Không viết nội dung mới trực tiếp vào tệp `.tex`.

## Build

Chạy từ trong thư mục `latex/`:

```bash
bash scripts/build.sh khoa-luan.tex slide-bao-ve.tex
```

## Hình ảnh

- Ưu tiên vector (`.pdf`, `.eps`) cho sơ đồ, `.png` cho ảnh chụp màn hình.
- Đặt trong `latex/images/`, tên theo nội dung.
- Phải đọc được khi in đen trắng khổ A4.

## Trích dẫn

Mọi khóa trong `\cite` phải có mục tương ứng trong `bao-cao/tai-lieu-tham-khao.bib`. Không
tự thêm mục vào tệp đó. Kiểm tra bằng `python .github/scripts/kiem_tra_trich_dan.py`.

Chi tiết đầy đủ trong `latex/README.md`.
