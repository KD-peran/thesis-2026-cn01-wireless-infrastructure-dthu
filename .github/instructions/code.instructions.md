---
name: 'Mã nguồn hệ thống'
description: 'Quy ước viết mã, đặt tên và xử lý bí mật trong code/'
applyTo: 'code/**'
---

# Viết mã nguồn

## Bí mật

Không bao giờ viết khóa API, mật khẩu, chuỗi kết nối, hay khóa riêng vào mã nguồn. Dùng
biến môi trường, và chỉ khai báo **tên** biến trong `code/.env.example`.

Không đề xuất giá trị mẫu trông giống thật cho các biến bí mật, kể cả giá trị thử nghiệm.
Sinh viên dễ tưởng đó là giá trị dùng được và commit nhầm.

## Đặt tên

- Biến, hàm, lớp, tên tệp: tiếng Anh.
- Comment: có thể tiếng Việt có dấu.
- Tên phải mô tả được mục đích, không viết tắt tùy tiện.

## Commit

Tiếng Anh, dạng `<loại>: <mô tả ngắn>`. Loại: `feat`, `fix`, `refactor`, `docs`, `test`,
`chore`.

Mô tả nói việc gì đã thay đổi, không nói tệp nào đã sửa. Tránh `update`, `fix bug`,
`sua file`.

## Kiểm thử

Mỗi chức năng bắt buộc trong bảng cam kết ở `bao-cao/de-cuong-khoa-luan.md` phải có ít nhất
một kiểm thử tự động cho luồng chính. Rubric chấm điều này ở tiêu chí 3.

## Tính tái lập

Người chấm sẽ cài lại hệ thống **trên máy khác** theo `code/README.md`. Mỗi khi thêm phụ
thuộc mới, cập nhật mục yêu cầu môi trường với phiên bản cụ thể.

Ghim phiên bản phụ thuộc. Dải phiên bản mở làm hệ thống chạy được hôm nay và hỏng lúc chấm.

## Không đặt vào code/

- Dữ liệu thực nghiệm. Đặt trong `thuc-nghiem/`.
- Thư viện tải về: `node_modules/`, `bin/`, `obj/`, `__pycache__/`.

Stack cụ thể và cấu trúc thư mục của đề tài này ghi trong `code/README.md`.
