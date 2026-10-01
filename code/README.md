# MÃ NGUỒN VÀ MÔ HÌNH MÔ PHỎNG HẠ TẦNG MẠNG

**Đề tài:** Thiết kế kiến trúc tổng thể hạ tầng mạng không dây tại Trường Đại học Đồng Tháp  
**Sinh viên thực hiện:** Nguyễn Thị Kỳ Duyên (MSSV: 0023410647 — Lớp: ĐHCNTT23B-CS)  

---

## 1. Mục đích thư mục

Thư mục `code/` chứa:
- Các file mô hình mô phỏng kiến trúc mạng trên phần mềm **Cisco Packet Tracer** (`.pkt`).
- Kịch bản dòng lệnh cấu hình thiết bị Switch Core, Switch Access PoE+, Wireless LAN Controller (WLC) và Router biên (Cisco IOS / WLC CLI).
- Cấu hình dịch vụ xác thực **FreeRADIUS / 802.1X** và cấu hình máy chủ **DHCP**.

---

## 2. Cấu trúc thư mục con

- `cisco-packet-tracer/`: Chứa file topology mô phỏng toàn trường DTHU (`dthu_campus_network_simulation.pkt`).
- `scripts/`: Chứa các script cấu hình mẫu:
  - `cisco_core_switch_vlan_routing.ios`: Cấu hình SVI VLAN 10, 20, 30, 40, DHCP Relay và Trunking.
  - `cisco_wlc_radius_wpa3_enterprise.txt`: Lệnh thiết lập WLAN SSID và máy chủ RADIUS AAA.
  - `freeradius_users_config.conf`: Cấu hình mẫu tài khoản định danh sinh viên và cán bộ giảng viên.
