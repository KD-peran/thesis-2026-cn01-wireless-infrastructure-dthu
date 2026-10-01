# Khóa luận 2026.CN.01 — Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp

## Mục đích

Kho tài liệu, cấu hình kỹ thuật và bộ công cụ tự động hóa phục vụ khóa luận tốt nghiệp đại học ngành Khoa học máy tính, chuyên ngành Mạng Máy Tính và An Ninh, Trường Đại học Đồng Tháp.

**Tên đề tài đầy đủ:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp.

---
 a
## Bắt đầu từ đâu

Năm bước khởi đầu cho sinh viên và người cộng tác:

1. **Khai báo danh tính Git (nếu làm việc trên kho Git):**

   ```bash
   git config user.name "KD-peran"
   git config user.email "0023410647@student.dthu.edu.vn"
   ```

2. **Đọc hồ sơ thủ tục và đề cương đã duyệt:**
   - Đề cương chi tiết: [thu-tuc-khoa/de-cuong-khoa-luan.md](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/thu-tuc-khoa/de-cuong-khoa-luan.md) hoặc bản gốc [thu-tuc-khoa/3.De cuong thuc hien de tai.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/thu-tuc-khoa/3.De%20cuong%20thuc%20hien%20de%20tai.pdf).
   - Đơn đăng ký học phần: [thu-tuc-khoa/1a.Don dang ky lam KLTN.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/thu-tuc-khoa/1a.Don%20dang%20ky%20lam%20KLTN.pdf).
   - Kế hoạch tiến độ thực hiện: [thu-tuc-khoa/2.SV viet Ke hoach thuc hien.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/thu-tuc-khoa/2.SV%20viet%20Ke%20hoach%20thuc%20hien.pdf).

3. **Nắm rõ quy chế và rubric chấm điểm:**
   - Kế hoạch KLTN trường ĐHĐT: [huong-dan/KH-KLTN 2026-2027.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/huong-dan/KH-KLTN%202026-2027.pdf).
   - Quy định hình thức luận văn / khóa luận: [huong-dan/quy-dinh-hinh-thuc-kltn.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/huong-dan/quy-dinh-hinh-thuc-kltn.pdf).
   - Rubric chấm điểm: [huong-dan/rubric-cham-khoa-luan.md](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/huong-dan/rubric-cham-khoa-luan.md).

4. **Đọc tài liệu tham khảo cốt lõi:**
   - Luận văn mạng không dây DTHU: [noi-dung-tong-hop/tai-lieu-tham-khao/Baocao-KLTN-Mang-Khong-Day-DTHU.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/noi-dung-tong-hop/tai-lieu-tham-khao/Baocao-KLTN-Mang-Khong-Day-DTHU.pdf).
   - Báo cáo chuyên đề chuẩn IEEE 802.11: [noi-dung-tong-hop/tai-lieu-tham-khao/Baocao-Chuan-Mang-Khong-Day-IEEE-802.11.pdf](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/noi-dung-tong-hop/tai-lieu-tham-khao/Baocao-Chuan-Mang-Khong-Day-IEEE-802.11.pdf).

5. **Đọc quy chuẩn phối hợp và công cụ:** [CLAUDE.md](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/CLAUDE.md) và [CONTRIBUTING.md](file:///d:/KLTN/thesis-2026-cn01-wireless-infrastructure-dthu/CONTRIBUTING.md).

---

## Thông tin đề tài chuẩn xác

| Mục | Nội dung |
| --- | --- |
| **Mã đề tài** | `2026.CN.01` |
| **Tên đề tài** | **Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp** |
| **Sinh viên thực hiện** | **Nguyễn Thị Kỳ Duyên** |
| **Mã số sinh viên** | `0023410647` |
| **Lớp sinh hoạt** | `ĐHCNTT23B-CS` |
| **Ngành / Chuyên ngành** | Khoa học máy tính / Mạng Máy Tính và An Ninh |
| **Khóa đào tạo** | `2023 – 2027` |
| **Giáo viên hướng dẫn** | **TS. Lương Thái Ngọc** |
| **Cơ sở đào tạo** | Khoa Công nghệ và Kỹ thuật — Trường Đại học Đồng Tháp (DTHU) |
| **Thời gian thực hiện** | `01/09/2026 – 29/04/2027` (Bảo vệ: `04/2027`) |

---

## Bài toán kỹ thuật

Với quy mô hơn 15.000 sinh viên và cán bộ giảng viên cùng sự bùng nổ thiết bị cá nhân (BYOD), hệ thống mạng Wi-Fi hiện hữu của Trường Đại học Đồng Tháp đối mặt với 3 điểm nghẽn nghiêm trọng:
1. **Quá tải bộ điều khiển trung tâm (WLC):** Thiết bị Motorola RFS6000 bị chạm trần 2.000 kết nối, trong khi giờ cao điểm lưu lượng vượt 2.300 thiết bị, dẫn đến lỗi cạn kiệt IP (DHCP Exhaustion) khiến người dùng thấy sóng "đầy vạch" nhưng không vào được mạng.
2. **Can nhiễu đồng kênh và nghẽn hàng đợi (Airtime Contention):** Sử dụng các AP chuẩn cũ (802.11n/ac) chia lượt truy cập và lạm dụng dải tần 2.4 GHz khiến tốc độ tải xuống tại Giảng đường A1 giờ cao điểm sụt giảm tới gần 74\%.
3. **Thiết bị ngoại lai (Rogue AP) và rủi ro bảo mật:** Cán bộ tự ý lắp đặt router Wi-Fi cá nhân gây phát sinh DHCP giả mạo và đe dọa an toàn thông tin mạng lõi.

---

## Giải pháp và Phạm vi

### Trong phạm vi nghiên cứu:
- Khảo sát thực địa toàn bộ mặt bằng kiến trúc các khối nhà DTHU (A1, A2, A7, A8, A9, B1, B2, B3, B4, B5, B6, H1, H2, H3, Thư viện, C1, C2).
- Đo kiểm định lượng phổ sóng (RSSI, SNR bằng Wi-Fi Analyzer) và băng thông thực tế (Speedtest).
- Thiết kế kiến trúc mạng phân cấp 3 lớp chuẩn Enterprise (Core Layer 10G, Distribution Layer, Access PoE+ 802.3at Cat6A).
- Nâng cấp WLC thế hệ mới năng lực 5.000 – 10.000 kết nối đồng thời với cấu hình dự phòng High Availability (HA) $N+1$.
- Chuẩn hóa công nghệ Wi-Fi 6 (OFDMA, MU-MIMO, BSS Coloring) tại các khu vực mật độ cao và tái luân chuyển AP cũ cho khu vực hành chính ít người.
- Phân hoạch VLAN, không gian địa chỉ IP /20 (hơn 8.000 IP) và chiến lược rút ngắn DHCP Lease Time xuống 2 -- 4 giờ.
- Cơ chế chuyển vùng mượt mà Fast Roaming (IEEE 802.11r/k/v độ trễ $< 50$ms) và bảo mật tập trung WPA2/WPA3-Enterprise (802.1X/EAP với FreeRADIUS/Active Directory).
- Xây dựng mô hình mô phỏng hoàn chỉnh và đánh giá kiểm chứng trên **Cisco Packet Tracer**.

### Ngoài phạm vi đề tài:
- Không tiến hành thi công lắp đặt phần cứng vật lý trên toàn trường (do rào cản chi phí đầu tư cấp doanh nghiệp).
- Không can thiệp cấu hình trực tiếp trên các thiết bị lõi thực tế đang vận hành của Nhà trường khi chưa được cấp thẩm quyền.

---

## Cấu trúc Repository

```text
thesis-2026-cn01-wireless-infrastructure-dthu/
├── .claude/                  # Cấu hình AI Agent, Skill, Hook, Slash Command (.md, .py)
├── .github/                  # Copilot instructions, script kiểm tra trích dẫn, CI/CD workflow
├── bao-cao/                  # Bản thảo Markdown các chương và file trích dẫn tai-lieu-tham-khao.bib
├── code/                     # File mô phỏng Cisco Packet Tracer (.pkt) và script cấu hình Switch/WLC
├── huong-dan/                # Kế hoạch trường ĐHĐT (KH-KLTN), quy định hình thức, rubric chấm điểm
├── ke-hoach/                 # Báo cáo tiến độ tuần và tool tự động xuất PDF chuẩn nhận diện DTHU
├── latex/                    # Mã nguồn LaTeX toàn văn khóa luận và slide bảo vệ
│   ├── chuong/               # File .tex các chương 1, 2, 3, 4, mở đầu, cam đoan, phụ lục
│   ├── images/               # Toàn bộ 53 sơ đồ mặt bằng, phổ sóng Wi-Fi Analyzer, logo DTHU
│   ├── outputs/              # File PDF đầu ra: khoa-luan.pdf (56 trang), slide-bao-ve.pdf (23 trang)
│   └── scripts/              # Script build.ps1 và build.sh cho pdflatex + biber
├── noi-dung-tong-hop/        # Tài liệu tổng hợp kiến trúc toàn diện & pipeline sơ đồ Mermaid
│   └── tai-lieu-tham-khao/   # Luận văn mẫu DTHU và chuyên đề lý thuyết IEEE 802.11
├── thu-tuc-khoa/             # Đơn đăng ký (1a), Kế hoạch (2), Đề cương (3) (PDF & Word)
├── thuc-nghiem/              # Dữ liệu đo kiểm thực địa Wi-Fi Analyzer, Throughput Speedtest
├── build.ps1                 # Script build nhanh khóa luận LaTeX từ thư mục gốc
├── tool.ps1                  # Trung tâm điều khiển toàn bộ công cụ dự án (Tool Launcher Hub)
├── CLAUDE.md                 # Hướng dẫn chi tiết cho trợ lý AI và liêm chính học thuật
├── AGENTS.md                 # Kiến trúc hệ thống Subagent chuyên trách
└── CONTRIBUTING.md           # Quy định đóng góp, quy chuẩn commit và bảo mật
```

---

## Lệnh hay dùng (Tool Ecosystem)

### 1. Trung tâm điều khiển chính (Khuyên dùng):
Chạy menu tương tác 7 tính năng:
```powershell
powershell -ExecutionPolicy Bypass -File .\tool.ps1
```

### 2. Biên dịch Khóa luận và Slide bảo vệ LaTeX:
Từ thư mục gốc:
```powershell
powershell -ExecutionPolicy Bypass -File .\build.ps1               # Build khoa-luan.tex (outputs/khoa-luan.pdf)
powershell -ExecutionPolicy Bypass -File .\build.ps1 slide-bao-ve.tex # Build slide bảo vệ (outputs/slide-bao-ve.pdf)
```

### 3. Xuất Báo cáo tiến độ tuần sang PDF:
```powershell
cd ke-hoach
powershell -ExecutionPolicy Bypass -File .\tool\export-pdf.ps1
```

### 4. Xuất Tài liệu Kiến trúc Tổng hợp sang PDF:
```powershell
cd noi-dung-tong-hop
powershell -ExecutionPolicy Bypass -File .\tool\export-pdf.ps1 -DirectOnly
```

---

## Dùng Trợ lý AI

Repo đã cấu hình sẵn quy tắc cho Claude Code (`CLAUDE.md` và `.claude/`), GitHub Copilot (`.github/copilot-instructions.md`) và các hệ thống Agent (`AGENTS.md`):

| Agent | Vai trò |
| --- | --- |
| `co-van-de-cuong` | Tư vấn phương pháp luận đo kiểm, phân tích kiến trúc mạng |
| `soan-chuong-bao-cao` | Soạn thảo, biên tập các chương báo cáo học thuật, đồng bộ sang LaTeX |
| `ra-soat-truoc-nop` | Rà soát toàn văn theo rubric chấm điểm và quy chuẩn hình thức |

Các lệnh tắt (Slash Commands):
- `/bien-ban <so-tuan>`: Tạo biên bản họp tiến độ hàng tuần với TS. Lương Thái Ngọc.
- `/tien-do`: Đối chiếu tiến độ thực hiện với các mốc trong Đề cương.
- `/kiem-tra-nop`: Kiểm tra toàn diện tài liệu trước khi xuất bản.

**Ba quy tắc liêm chính học thuật:** Tuyệt đối không bịa số liệu đo kiểm thực địa, không bịa tài liệu trích dẫn và không sai lệch dữ liệu học vụ của sinh viên và Nhà trường.