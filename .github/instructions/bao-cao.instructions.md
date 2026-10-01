---
name: 'Chương báo cáo khóa luận'
description: 'Quy tắc viết nội dung báo cáo và đề cương trong bao-cao/'
applyTo: 'bao-cao/**/*.md'
---

# Viết nội dung báo cáo khóa luận

## Không được làm

- **Không sinh số liệu.** Mọi con số phải truy được về một thư mục trong
  `thuc-nghiem/ket-qua/`. Chưa đo thì để nguyên ô TODO.
- **Không sinh tài liệu tham khảo.** Khi cần trích dẫn mà chưa có tài liệu, ghi rõ là cần
  tìm tài liệu về chủ đề gì. Không tự đặt tên tác giả, năm, hay DOI.
- **Không điền dữ liệu học vụ.** Mã số sinh viên, lớp, năm học, ngày bảo vệ do người dùng
  cung cấp.

## Văn phong

- Tiếng Việt có dấu. Câu ngắn, một ý mỗi câu.
- Tránh từ mơ hồ: "tốt", "đầy đủ", "khá", "hiệu quả cao", "đáng kể". Thay bằng mô tả đo được.
- Mọi nhận định phải có căn cứ: một số liệu, một trích dẫn, hoặc một quan sát cụ thể.
- Không dùng "chúng ta", "chúng tôi" tùy tiện. Dùng thể bị động hoặc câu trần thuật trung tính.
- Mọi hình và bảng phải được nhắc đến trong phần thân trước khi xuất hiện.

## Cấu trúc tệp

Mỗi tệp có đúng một tiêu đề cấp một, mở đầu bằng mục `## Mục đích`.

## Ràng buộc riêng theo chương

| Chương | Ràng buộc |
| --- | --- |
| 1. Mở đầu | Bài toán phải có bằng chứng từ khảo sát thật |
| 2. Cơ sở lý thuyết | Tối thiểu 15 tài liệu, ít nhất 8 từ 2020 trở lại; kết bằng bảng so sánh |
| 3. Thiết kế | Bắt buộc có sơ đồ kiến trúc; mỗi công nghệ nêu phương án thay thế đã cân nhắc |
| 4. Cài đặt | Phiên bản công cụ phải khớp `code/README.md`; kèm ảnh chụp màn hình |
| 5. Thực nghiệm | Nêu cách đo trước khi nêu kết quả; bắt buộc có mục giới hạn của kết quả |
| 6. Kết luận | Đối chiếu với từng mục tiêu ở đề cương; viết trung thực về hạn chế |

## Đề cương là bản cam kết

`de-cuong-khoa-luan.md` được dùng để chấm. Chức năng ghi trong bảng ở mục 5 mà không hoàn
thành sẽ bị trừ điểm. Không sửa bảng đó để che việc chưa làm xong.

Chi tiết đầy đủ trong `bao-cao/README.md` và `huong-dan/rubric-cham-khoa-luan.md`.
