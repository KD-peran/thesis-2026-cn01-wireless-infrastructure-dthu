# Mã Nguồn Kỹ Thuật & Kịch Bản Cấu Hình Hệ Thống

> **Mục đích:** Tài liệu kỹ thuật đặc tả chi tiết toàn bộ kịch bản cấu hình phần cứng, kịch bản điều khiển bộ điều khiển trung tâm WLC, máy chủ xác thực FreeRADIUS và mô hình mô phỏng Cisco Packet Tracer trong đề tài Khóa luận tốt nghiệp.

---

## 1. Cấu Trúc Mã Nguồn Trong `code/`

```text
code/
├── .env.example                         # Biến môi trường mẫu cho dịch vụ RADIUS & WLC
├── README.md                            # Hướng dẫn tổng thể cài đặt
├── cisco-packet-tracer/                 # Hồ sơ mô phỏng kiến trúc mạng Campus
│   └── README.md                        # Kịch bản kĩ thuật mô phỏng 3 lớp
├── wlc/                                 # Kịch bản cấu hình Cisco Catalyst WLC
│   └── wlc_ha_config.ios                # Cấu hình HA SSO N+1 & CAPWAP Interface
└── radius/                              # Cấu hình FreeRADIUS Server xác thực 802.1X
    ├── clients.conf                     # Đăng ký WLC làm RADIUS Client
    └── users                            # Định danh người dùng mẫu & gán VLAN ID động
```

---

## 2. Kịch Bản Cấu Hình WLC High Availability (N+1 Active-Standby)

Tệp: `code/wlc/wlc_ha_config.ios`

```ios
! ========================================================
! CẤU HÌNH GIAO DIỆN DỰ PHÒNG HA (REDUNDANCY INTERFACE)
! ========================================================
redundancy
 mode sso
 keepalive-timer 100
 keepalive-retries 3

! Cấu hình giao diện kết nối WLC Primary (Chính)
interface Redundancy-Management
 ip address 172.16.50.10 255.255.255.0
 peer ip address 172.16.50.11

! ========================================================
! CẤU HÌNH ĐƯỜNG HẦM CAPWAP QUẢN LÝ ACCESS POINT
! ========================================================
wireless management interface Vlan50
wireless ap high-availability
 primary WLC-PRIMARY 172.16.50.10
 secondary WLC-BACKUP 172.16.50.11

! ========================================================
! CẤU HÌNH TÍNH NĂNG CHUYỂN VÙNG NHANH FAST ROAMING
! ========================================================
wlan DTHU_STUDENT 20 DTHU_STUDENT
 security wpa psk set-key ascii 0
 security wpa wpa2
 security wpa wpa2 ciphers aes
 security dot1x authentication-list RADIUS-SRV
 dot11-k neighbor-report
 dot11-v bss-transition
 dot11-r ft over-the-ds
 dot11-r ft reassociation-timeout 20
 no shutdown
```

---

## 3. Cấu Hình Máy Chủ FreeRADIUS Xác Thực 802.1X

### Đăng ký WLC làm NAS Client (`code/radius/clients.conf`):
```text
client wlc_primary {
    ipaddr = 172.16.50.10
    secret = DTHU_Radius_Secret_Key_2026!
    shortname = WLC-Primary
    nastype = cisco
}

client wlc_backup {
    ipaddr = 172.16.50.11
    secret = DTHU_Radius_Secret_Key_2026!
    shortname = WLC-Backup
    nastype = cisco
}
```

### Chính sách cấp quyền và gán động VLAN (`code/radius/users`):
```text
# Tài khoản Giảng viên / Cán bộ DTHU (Cấp VLAN 10)
DEFAULT Group == "CanBoGiangVien", Auth-Type := EAP
    Tunnel-Type = 13,
    Tunnel-Medium-Type = 6,
    Tunnel-Private-Group-Id = "10"

# Tài khoản Toàn thể Sinh viên DTHU (Cấp VLAN 20)
DEFAULT Group == "SinhVienDTHU", Auth-Type := EAP
    Tunnel-Type = 13,
    Tunnel-Medium-Type = 6,
    Tunnel-Private-Group-Id = "20"
```

---

## 4. Kịch Bản Mô Phỏng Cisco Packet Tracer 8.x

Mô hình mô phỏng bao gồm:
* **02 Switch Core Layer 3 (Catalyst 3650):** Chạy giao thức HSRP Active-Standby làm Default Gateway cho 5 VLAN, cấu hình OSPF định tuyến đa WAN ra Internet.
* **04 Switch Distribution:** Dual-homed cáp quang 10 Gbps nối đồng thời lên cả 2 Switch Core.
* **04 Switch Access PoE+ (2960-24TT):** Cấp nguồn chuẩn 802.3at cho các AP Wi-Fi 6.
* **02 WLC (Cisco 3504):** Chạy cơ chế HA N+1 quản trị các AP.
* **Cụm Máy chủ Trung tâm dữ liệu:** Máy chủ FreeRADIUS xác thực 802.1X, máy chủ DHCP phân bổ dải IP `172.16.20.0/20` và DNS Server.
