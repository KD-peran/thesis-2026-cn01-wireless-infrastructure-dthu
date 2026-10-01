# Hướng dẫn cho GitHub Copilot

Repo này là một khóa luận tốt nghiệp đại học ngành Công nghệ phần mềm, Trường Đại học Đồng
Tháp. Repo chứa cả tài liệu và mã nguồn. Người dùng chính là sinh viên thực hiện đề tài.

## Ba điều không được làm

1. **Không sinh số liệu.** Không tự điền con số vào bảng kết quả, bảng chỉ số, hay phần
   đánh giá. Số liệu phải đến từ thực nghiệm có thật, ghi trong `thuc-nghiem/ket-qua/`.
   Chỗ chưa có số thì để nguyên ô TODO.
2. **Không sinh tài liệu tham khảo.** Không tự thêm mục vào `bao-cao/tai-lieu-tham-khao.bib`,
   không bịa tên tác giả, năm, DOI. Một trích dẫn sai làm hỏng cả tiêu chí trình bày khi chấm,
   và là lỗi liêm chính học thuật.
3. **Không điền dữ liệu học vụ.** Mã số sinh viên, lớp, năm học, ngày bảo vệ phải do người
   dùng cung cấp.

## Cấu trúc repo

| Thư mục | Nội dung |
| --- | --- |
| `bao-cao/` | Đề cương, sáu chương báo cáo, danh mục tài liệu tham khảo |
| `latex/` | Bản LaTeX báo cáo và slide bảo vệ |
| `code/` | Mã nguồn hệ thống |
| `thuc-nghiem/` | Dữ liệu và kết quả thực nghiệm |
| `huong-dan/` | Rubric, phiếu đánh giá, biên bản tuần |

Mỗi thư mục có `README.md` nói rõ đặt gì vào đó và không đặt gì vào đó.

## Quy ước chung

- Tài liệu viết tiếng Việt **có dấu**. Mỗi tệp Markdown một tiêu đề cấp một, mở đầu bằng
  mục `## Mục đích`.
- Mã nguồn, tên biến, commit message viết tiếng Anh.
- Commit dạng `<loại>: <mô tả ngắn>`, loại là `feat`, `fix`, `refactor`, `docs`, `test`,
  hoặc `chore`. Ví dụ: `feat: them API truy van lich su giao dich`.
- Văn phong học thuật, câu ngắn, tránh từ mơ hồ như "tốt", "đầy đủ", "khá".
- Không viết khóa API, mật khẩu, chuỗi kết nối vào mã. Dùng biến môi trường, khai báo tên
  biến trong `code/.env.example`.

## Quy tắc theo từng thư mục

Quy tắc chi tiết nằm trong `.github/instructions/`, Copilot tự nạp theo tệp đang mở:

| Tệp | Áp dụng cho |
| --- | --- |
| `bao-cao.instructions.md` | `bao-cao/**/*.md` |
| `latex.instructions.md` | `latex/**/*.tex` |
| `code.instructions.md` | `code/**` |
| `thuc-nghiem.instructions.md` | `thuc-nghiem/**` |
| `huong-dan.instructions.md` | `huong-dan/**/*.md` |

## Agent và skill dùng chung với Claude

Repo dùng chung một bộ cấu hình cho cả hai trợ lý. VS Code đọc được thư mục `.claude/`, nên
không phải khai báo hai lần.

| Loại | Nơi đặt | Nội dung |
| --- | --- | --- |
| Agent | `.claude/agents/` | `co-van-de-cuong`, `soan-chuong-bao-cao`, `ra-soat-truoc-nop` |
| Skill | `.claude/skills/` | `viet-chuong-bao-cao`, `kiem-tra-tai-lieu-tham-khao`, `ghi-bien-ban-tuan` |

Nếu bạn thêm agent riêng cho Copilot, đặt tại `.github/agents/<ten>.agent.md`. Đặt tên khác
với ba agent trên để tránh trùng.

## Lệnh hay dùng

```bash
cd latex && bash scripts/build.sh khoa-luan.tex slide-bao-ve.tex
python .github/scripts/kiem_tra_trich_dan.py
```

GitHub Actions chạy hai lệnh này mỗi lần đẩy lên `main`.

## Bối cảnh thêm

Quy tắc đầy đủ nằm trong `CLAUDE.md`. Cách làm việc và đẩy code nằm trong `CONTRIBUTING.md`.
Thang điểm nằm trong `huong-dan/rubric-cham-khoa-luan.md`.
