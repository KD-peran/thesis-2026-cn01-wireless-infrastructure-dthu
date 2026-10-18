# AGENTS.md

Tài liệu cấu hình và quy chuẩn hoạt động của hệ thống Agent & Subagent trong dự án Khóa luận tốt nghiệp.

---

## 1. Thông Tin Học Vụ Chuẩn Định

* **Tên đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp
* **Mã số đề tài:** `2026.CN.01`
* **Sinh viên thực hiện:** **Nguyễn Thị Kỳ Duyên** (MSSV: `0023410647` — Lớp: `ĐHCNTT23B-CS`)
* **Giảng viên hướng dẫn:** **TS. Lương Thái Ngọc**
* **Cơ sở đào tạo:** Trường Đại học Đồng Tháp (DTHU) — Khoa Công nghệ và Kỹ thuật
* **Ngành / Chuyên ngành:** Khoa học máy tính / Mạng Máy Tính và An Ninh (Khóa 2023 – 2027)

Mọi Agent và Subagent khi sinh nội dung báo cáo, slide hoặc tài liệu kỹ thuật bắt buộc phải tuân thủ nghiêm ngặt các thông tin học vụ trên.

---

## 2. Ba Quy Tắc Chống Bịa (Liêm Chính Học Thuật)

1. **Không bịa số liệu đo kiểm:** Mọi con số khảo sát vùng phủ sóng, RSSI, SNR, thông lượng Throughput (Download/Upload) và độ trễ Ping phải đối chiếu chính xác từ dữ liệu thực tế tại các tòa nhà DTHU trong `thuc-nghiem/` hoặc trích xuất có căn cứ khoa học. Chưa đo thì để ô `TODO` và nêu rõ là đang thiếu, tuyệt đối không ước lượng hoặc lấy số cho có.
2. **Không bịa tài liệu tham khảo:** Không tự ý thêm nguồn không có thật vào `bao-cao/tai-lieu-tham-khao.bib`. Mọi tiêu chuẩn IEEE (802.11a/b/g/n/ac/ax/be, 802.11r/k/v), sách giáo trình chuẩn (Matthew Gast, Kurose & Ross, Stallings, Cisco Design Guide) phải chính xác thông tin xuất bản, tác giả, năm và DOI/URL.
3. **Không bịa dữ liệu học vụ:** Mọi thông tin về Trường, Khoa, Ngành, Lớp, MSSV, Giảng viên hướng dẫn phải đối chiếu chuẩn 100% từ bảng cấu hình hoặc `thu-tuc-khoa/de-cuong-khoa-luan.md`. Tuyệt đối không dùng mẫu của trường khác.

---

## 3. Kỷ Luật Git Nghiêm Cấm Tự Động Push

* Trợ lý AI có thể tạo commit cục bộ (`git commit`) khi hoàn thành các đơn vị công việc logic rõ ràng.
* **TUYỆT ĐỐI NGHIÊM CẤM tự ý chạy `git push`** lên remote repository (`origin`). Thao tác push bắt buộc phải do người dùng tự làm hoặc có lệnh yêu cầu rõ ràng từ người dùng.

---

## 4. Định Hướng Trọng Tâm Cốt Lõi (Scope Boundary - Chống Lệch Đề)

* **Trọng tâm 1 (Kỹ thuật then chốt - 100% công sức):**
  * Khảo sát thực địa (Wi-Fi Analyzer, Speedtest), chẩn đoán nghẽn tải WLC RFS6000 và can nhiễu 2.4 GHz tại 14 khối công trình DTHU.
  * Thiết kế kiến trúc 3 lớp phân cấp Enterprise Campus WLAN: Core Layer, Distribution Layer, Access Layer (PoE+ 802.3at).
  * Chuẩn hóa công nghệ **Wi-Fi 6 (IEEE 802.11ax)**: OFDMA, MU-MIMO hai chiều, BSS Coloring.
  * Tối ưu hóa vận hành: WLC tập trung High Availability N+1, Fast Roaming (IEEE 802.11r/k/v), phân hoạch VLAN /20, chiến lược thu hồi DHCP nhanh (2 – 4 giờ), xác thực định danh 802.1X/EAP với FreeRADIUS/LDAP.
* **Trọng tâm 2 (Phân hệ mô phỏng & đo lường định lượng):**
  * Mô phỏng toàn diện trên Cisco Packet Tracer 8.x, kiểm thử định tuyến đa WAN, cô lập Client Isolation, đánh giá so sánh định lượng các chỉ số kỹ thuật trước và sau tối ưu. Tuyệt đối không phân tích dàn trải lan man ngoài phạm vi này.

---

## 5. Quy Chuẩn Soạn Thảo Markdown

1. Mỗi tệp Markdown chỉ có duy nhất **1 tiêu đề cấp một (`#`)**, mở đầu ngay sau đó bằng hộp trích dẫn `> **Mục đích:** ...`.
2. **Ký hiệu toán học & mũi tên:** Tuyệt đối KHÔNG viết mã LaTeX thô như `$\rightarrow$`, `$\approx$`, `$\pm$`. BẮT BUỘC dùng ký tự Unicode trực tiếp: `→`, `⟶`, `←`, `↔`, `≈`, `±`, `≤`, `≥`, `×` để Docsify và GitHub hiển thị sắc nét.

---

## 6. Danh Sách Agent Chuyên Trách

### 6.1. Agent Cố vấn Đề cương (`co-van-de-cuong`)
* **Vai trò:** Định hướng phương pháp luận, rà soát tính khả thi kỹ thuật của mô hình mạng không dây đề xuất.
* **Nguyên tắc:** Phản biện khoa học, đưa ra gợi ý và tiêu chí so sánh, không quyết định thay sinh viên.

### 6.2. Agent Soạn thảo Chương Báo cáo (`soan-chuong-bao-cao`)
* **Vai trò:** Chắp bút và chuẩn hóa nội dung các chương báo cáo học thuật từ cơ sở lý thuyết, số liệu khảo sát thực địa đến phương án thiết kế kỹ thuật.
* **Đảm bảo:** Trích dẫn tài liệu tham khảo chính xác theo chuẩn BibLaTeX, đồng bộ giữa các bản thảo Markdown (`bao-cao/`) và mã nguồn LaTeX (`latex/chuong/`).

### 6.3. Agent Rà soát Trước nộp (`ra-soat-truoc-nop`)
* **Vai trò:** Kiểm định chất lượng toàn diện trước các mốc báo cáo tiến độ và trước ngày nộp khóa luận chính thức.
* **Đảm bảo:** Đối chiếu nội dung báo cáo với Rubric chấm điểm của Khoa Công nghệ và Kỹ thuật (`huong-dan/rubric-cham-khoa-luan.md`), kiểm tra tính toàn vẹn của mô hình Cisco Packet Tracer và sơ đồ kiến trúc hệ thống.
