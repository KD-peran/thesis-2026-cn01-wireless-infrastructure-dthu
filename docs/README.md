# KHÓA LUẬN TỐT NGHIỆP ĐẠI HỌC

## Thiết Kế Kiến Trúc Tổng Thể Hạ Tầng Mạng Không Dây Tại Trường Đại Học Đồng Tháp

<div class="badge-bar">
  <span class="badge">Mã đề tài: 2026.CN.01</span>
  <span class="badge">Trường: ĐH Đồng Tháp (DTHU)</span>
  <span class="badge">Khoa Công nghệ & Kỹ thuật</span>
  <span class="badge">Chuyên ngành: Mạng máy tính & An ninh</span>
  <span class="badge">Niên khóa: 2023 – 2027</span>
</div>

---

## 🎯 Mục đích Hệ thống Tài liệu Trực tuyến

Hệ thống tài liệu Web Docsify này là cổng thông tin trực tuyến (Dashboard) phục vụ Giảng viên hướng dẫn và Hội đồng đánh giá theo dõi toàn diện tiến độ nghiên cứu, hồ sơ học vụ, các báo cáo nghiên cứu chuyên sâu hàng tuần và tải trực tiếp các ấn phẩm PDF chính thức của khóa luận.

---

## 📋 Thông Tin Học Vụ Chính Thức

| Thông tin | Chi tiết chính thức |
|:---|:---|
| **Cơ sở đào tạo** | Trường Đại học Đồng Tháp (DTHU) |
| **Khoa / Viện** | Khoa Công nghệ và Kỹ thuật |
| **Ngành đào tạo** | Khoa học máy tính |
| **Chuyên ngành** | Mạng Máy Tính và An Ninh |
| **Khóa học / Niên khóa** | Khóa 2023 – 2027 (Bảo vệ tháng 04/2027) |
| **Sinh viên thực hiện** | **Nguyễn Thị Kỳ Duyên** |
| **Mã số sinh viên (MSSV)** | `0023410647` |
| **Lớp sinh hoạt** | ĐHCNTT23B-CS |
| **Giảng viên hướng dẫn** | **TS. Lương Thái Ngọc** |

---

## 🧭 Định Hướng Trọng Tâm Cốt Lõi (Scope Boundary - Chống Lệch Đề)

> [!IMPORTANT]
> **Cam kết liêm chính học thuật và tập trung phạm vi:** Đề tài tập trung 100% công sức giải quyết bài toán nghẽn tải, can nhiễu và thiết kế hạ tầng Enterprise WLAN thực tế tại khuôn viên DTHU. Tuyệt đối không phát triển dàn trải ngoài phạm vi nghiên cứu đã được phê duyệt.

* **Trọng tâm 1 (Kỹ thuật then chốt - 100% công sức):**
  * Khảo sát thực địa bằng Wi-Fi Analyzer và Speedtest tại 14 khối công trình DTHU (Giảng đường A1, C2, B1–B6, H1–H3, Thư viện).
  * Chẩn đoán nguyên nhân cốt lõi gây nghẽn tải: Thiết bị điều khiển cũ Motorola RFS6000 nghẽn CPU, can nhiễu kênh truyền 2.4 GHz nghiêm trọng.
  * Thiết kế kiến trúc phân cấp 3 lớp Enterprise Campus WLAN: Core Layer (Switch L3 + WLC HA Active-Standby N+1), Distribution Layer, Access Layer (PoE+ 802.3at).
  * Chuẩn hóa công nghệ **Wi-Fi 6 (IEEE 802.11ax)**: Đa truy nhập OFDMA, MU-MIMO hai chiều, tô màu nhận diện BSS Coloring.
  * Tối ưu hóa vận hành: Chuyển vùng nhanh **Fast Roaming (IEEE 802.11r/k/v)**, phân hoạch VLAN quy mô `/20`, tối ưu thời gian cấp phát DHCP lease time (2 – 4 giờ), xác thực định danh tập trung 802.1X/EAP với FreeRADIUS/LDAP.

* **Trọng tâm 2 (Mô phỏng & Đánh giá định lượng):**
  * Hiện thực hóa mô hình mô phỏng hoàn chỉnh trên **Cisco Packet Tracer 8.x**.
  * Kiểm thử định tuyến đa WAN (3 ISP: Viettel, VNPT, FPT), kiểm thử cô lập người dùng Client Isolation trong cùng SSID.
  * Bảng so sánh định lượng các chỉ số kỹ thuật trước và sau khi áp dụng giải pháp thiết kế mới.

---

## 🗺️ Sơ Đồ Kiến Trúc Phân Cấp 3 Lớp

```mermaid
graph TD
    subgraph WAN_LAYER ["TẦNG KẾT NỐI INTERNET (ĐA WAN)"]
        ISP1["ISP 1: Viettel (Leased Line FTTH)"]
        ISP2["ISP 2: VNPT (FTTH Tốc độ cao)"]
        ISP3["ISP 3: FPT Telecom (FTTH Dự phòng)"]
    end

    subgraph CORE_LAYER ["LỚP LÕI (CORE LAYER) - DATA CENTER"]
        EdgeRouter["Edge Router & Next-Gen Firewall"]
        CoreSwitch1["Switch Core Lớp 3 (Active)"]
        CoreSwitch2["Switch Core Lớp 3 (Standby)"]
        WLC_Primary["WLC Primary (Chính)"]
        WLC_Backup["WLC Standby (HA N+1)"]
        RadiusServer["Máy chủ FreeRADIUS (802.1X)"]
        DhcpServer["Máy chủ DHCP / DNS"]
    end

    subgraph DIST_LAYER ["LỚP PHÂN PHỐI (DISTRIBUTION LAYER)"]
        Dist_A["Dist Switch Khối Giảng đường A"]
        Dist_B["Dist Switch Khối Hành chính B"]
        Dist_H["Dist Switch Khối Tòa nhà H (H3)"]
        Dist_C["Dist Switch Khối C & Thư viện"]
    end

    subgraph ACCESS_WLAN ["LỚP TRUY CẬP (ACCESS & WI-FI 6 WLAN)"]
        PoE_A1["Switch PoE+ (Tòa A1)"]
        PoE_B5["Switch PoE+ (Căn tin B5)"]
        PoE_Lib["Switch PoE+ (Thư viện)"]
        PoE_H3["Switch PoE+ (Tòa H3)"]

        AP_A1["AP Wi-Fi 6 (OFDMA, MU-MIMO)"]
        AP_B5["AP Wi-Fi 6 (BSS Coloring)"]
        AP_Lib["AP Wi-Fi 6 (Mật độ cao)"]
        AP_H3["AP Wi-Fi 6 (High Density)"]
    end

    ISP1 --> EdgeRouter
    ISP2 --> EdgeRouter
    ISP3 --> EdgeRouter

    EdgeRouter --- CoreSwitch1
    EdgeRouter --- CoreSwitch2
    CoreSwitch1 --- CoreSwitch2

    CoreSwitch1 --- WLC_Primary
    CoreSwitch2 --- WLC_Backup
    WLC_Primary -. "CAPWAP HA (N+1)" .- WLC_Backup

    CoreSwitch1 --- RadiusServer
    CoreSwitch1 --- DhcpServer

    CoreSwitch1 --- Dist_A
    CoreSwitch1 --- Dist_B
    CoreSwitch2 --- Dist_H
    CoreSwitch2 --- Dist_C

    Dist_A --- PoE_A1
    Dist_B --- PoE_B5
    Dist_H --- PoE_H3
    Dist_C --- PoE_Lib

    PoE_A1 --- AP_A1
    PoE_B5 --- AP_B5
    PoE_H3 --- AP_H3
    PoE_Lib --- AP_Lib
```

---

## ⚡ Lối Tắt Truy Cập Nhanh

* 📑 **Bản in Khóa Luận PDF (56 trang):** [Tải và Đọc Trực Tuyến](publications.md)
* 📊 **Slide Thuyết Trình Bảo Vệ (23 trang):** [Xem Slide Beamer](publications.md#slide-thuyết-trình-bảo-vệ)
* 📝 **Nghiên cứu Kỹ thuật Chuyên sâu:** [Tổng hợp Kiến trúc Mạng DTHU](research/TONG_HOP_KIEN_TRUC_MANG_DTHU.md)
* 🗓️ **Báo cáo Tiến độ Hàng tuần:** [Nhật ký Tiến độ](weekly-changelog.md)
* 📂 **Bản đồ Cấu trúc Toàn Repo:** [Xem Chi Tiết Cây Thư Mục](Cau-truc-toan-repo.md)
