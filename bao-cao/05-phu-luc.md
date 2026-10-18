# Phụ Lục Kỹ Thuật

> **Mục đích:** Cung cấp các đoạn mã cấu hình mạng mẫu (Switch Core Cisco, WLC Controller, FreeRADIUS) và các thông số kỹ thuật phục vụ triển khai thực nghiệm.

---

## Phụ Lục 1: Cấu Hình Mẫu VLAN và Định Tuyến Trên Switch Core Lớp 3 (Cisco IOS)

Đoạn mã cấu hình các phân hệ mạng logic VLAN, gán địa chỉ IP Gateway và thiết lập dịch vụ chuyển tiếp DHCP (IP Helper-Address) trên Switch Core tại trung tâm dữ liệu:

```bash
! ==============================================================
! 1. KHOI TAO CAC VLAN CHUYEN DUNG THEO QUY HOACH
! ==============================================================
vlan 10
 name VLAN_DTHU_STAFF
!
vlan 20
 name VLAN_STUDENT_BLOCK_A
!
vlan 30
 name VLAN_STUDENT_BLOCK_B_C_H
!
vlan 40
 name VLAN_DTHU_GUEST
!
vlan 99
 name VLAN_MANAGEMENT_WLC_AP
!
! ==============================================================
! 2. CAU HINH GIAO DIEN DINH TUYEN (SVI) VA DHCP RELAY AGENT
! ==============================================================
interface Vlan10
 description Gateway cho Can bo Giang vien
 ip address 192.168.10.1 255.255.255.0
 no shutdown
!
interface Vlan20
 description Gateway Sinh vien Khoi A (Subnet /20 - 4094 IP)
 ip address 10.10.0.1 255.255.240.0
 ip helper-address 192.168.10.10
 no shutdown
!
interface Vlan30
 description Gateway Sinh vien Khoi B, C, H (Subnet /20 - 4094 IP)
 ip address 10.20.0.1 255.255.240.0
 ip helper-address 192.168.10.10
 no shutdown
!
interface Vlan40
 description Gateway mang Khach vang lai
 ip address 172.16.40.1 255.255.255.0
 ip helper-address 192.168.10.10
 no shutdown
!
interface Vlan99
 description Mang quan tri WLC va AP (Management)
 ip address 172.16.99.1 255.255.255.0
 no shutdown
!
! ==============================================================
! 3. CAU HINH DUONG TRUYEN TRUNK KET NOI SANG DISTRIBUTION SWITCH
! ==============================================================
interface GigabitEthernet1/0/1
 description Trunk Link sang Distribution Switch Khoi Giăng duong A
 switchport mode trunk
 switchport trunk allowed vlan 10,20,99
 no shutdown
```

---

## Phụ Lục 2: Cấu Hình Xác Thực 802.1X Với Máy Chủ FreeRADIUS

Trích đoạn cấu hình kết nối WLC với máy chủ FreeRADIUS:

```text
# Cấu hình file clients.conf trên FreeRADIUS Server
client DTHU_WLC_HA_Cluster {
    ipaddr       = 172.16.99.10
    secret       = Dthu@RadiusSecureKey2026!
    shortname    = wlc-cluster
    nas_type     = cisco
}
```
