#!/usr/bin/env python3
"""Doi chieu trich dan trong ban LaTeX voi danh muc tai lieu tham khao.

Chay:  python .github/scripts/kiem_tra_trich_dan.py

Bao loi khi:
  - Trich dan mot khoa khong co trong .bib (bien dich se ra dau hoi trong PDF).
  - Muc trong .bib khong duoc trich dan o dau (thua, phai bo truoc khi nop).
  - Muc trong .bib thieu truong bat buoc.

Khi .bib chua co muc nao thi bao qua: giai doan dau cua khoa luan la binh thuong.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

GOC = Path(__file__).resolve().parents[2]
BIB = GOC / "bao-cao" / "tai-lieu-tham-khao.bib"
THU_MUC_TEX = GOC / "latex"

# Truong bat buoc cho moi muc. Ngoai ra phai co it nhat mot trong TRUONG_CAN_MOT.
TRUONG_BAT_BUOC = ("author", "title", "year")
TRUONG_CAN_MOT = ("doi", "url")

# \cite, \citep, \citet, \parencite, \textcite... co the co [tuy chon] va nhieu khoa.
MAU_TRICH_DAN = re.compile(r"\\[a-zA-Z]*cite[a-zA-Z]*\s*(?:\[[^\]]*\]\s*)*\{([^}]*)\}")
MAU_MUC_BIB = re.compile(r"^\s*@(\w+)\s*\{\s*([^,\s]+)\s*,", re.MULTILINE)
MAU_NOCITE_ALL = re.compile(r"\\nocite\s*\{\s*\*\s*\}")


def doc(duong_dan: Path) -> str:
    return duong_dan.read_text(encoding="utf-8", errors="replace")


def bo_chu_thich_bib(noi_dung: str) -> str:
    """Bo dong chu thich cua BibTeX (dong bat dau bang %)."""
    return "\n".join(d for d in noi_dung.splitlines() if not d.lstrip().startswith("%"))


def doc_muc_bib(noi_dung: str) -> dict:
    """Tra ve {khoa: than cua muc}, cat than theo vi tri cac dau @."""
    vi_tri = [(m.start(), m.group(2)) for m in MAU_MUC_BIB.finditer(noi_dung)]
    ket_qua = {}
    for i, (dau, khoa) in enumerate(vi_tri):
        cuoi = vi_tri[i + 1][0] if i + 1 < len(vi_tri) else len(noi_dung)
        ket_qua[khoa] = noi_dung[dau:cuoi]
    return ket_qua


def main() -> int:
    if not BIB.exists():
        print("Khong tim thay bao-cao/tai-lieu-tham-khao.bib.")
        return 1

    muc_bib = doc_muc_bib(bo_chu_thich_bib(doc(BIB)))

    if not muc_bib:
        print("Danh muc tai lieu tham khao chua co muc nao. Bo qua kiem tra.")
        print("Nhac: moi muc them vao phai la cong trinh co that, kiem chung duoc.")
        return 0

    # Gom trich dan tu cac tep .tex trong latex/ va latex/chuong/
    da_trich_dan = set()
    tep_bo_qua = []
    danh_sach_tex = list(THU_MUC_TEX.glob("*.tex"))
    thu_muc_chuong = THU_MUC_TEX / "chuong"
    if thu_muc_chuong.exists():
        danh_sach_tex.extend(thu_muc_chuong.glob("*.tex"))

    for tex in sorted(danh_sach_tex):
        noi_dung = doc(tex)
        if MAU_NOCITE_ALL.search(noi_dung):
            tep_bo_qua.append(tex.name)
            continue
        for khop in MAU_TRICH_DAN.finditer(noi_dung):
            for khoa in khop.group(1).split(","):
                khoa = khoa.strip()
                if khoa:
                    da_trich_dan.add(khoa)

    loi = []

    # 1. Trich dan khong co trong danh muc
    for khoa in sorted(da_trich_dan - set(muc_bib)):
        loi.append(
            "Trich dan '%s' khong co muc tuong ung trong tai-lieu-tham-khao.bib." % khoa
        )

    # 2. Muc thua trong danh muc
    for khoa in sorted(set(muc_bib) - da_trich_dan):
        loi.append(
            "Muc '%s' co trong tai-lieu-tham-khao.bib nhung khong duoc trich dan "
            "trong khoa-luan.tex." % khoa
        )

    # 3. Muc thieu truong bat buoc
    for khoa, than in sorted(muc_bib.items()):
        than_thuong = than.lower()
        thieu = [t for t in TRUONG_BAT_BUOC if not re.search(r"\b%s\s*=" % t, than_thuong)]
        if not any(re.search(r"\b%s\s*=" % t, than_thuong) for t in TRUONG_CAN_MOT):
            thieu.append("doi hoac url")
        if thieu:
            loi.append("Muc '%s' thieu truong: %s." % (khoa, ", ".join(thieu)))

    if tep_bo_qua:
        print("Bo qua (dung nocite tat ca): %s" % ", ".join(tep_bo_qua))
    print(
        "Danh muc co %d muc, ban LaTeX trich dan %d khoa."
        % (len(muc_bib), len(da_trich_dan))
    )

    if loi:
        print("\nPhat hien %d van de:\n" % len(loi))
        for dong in loi:
            print("  - %s" % dong)
        print(
            "\nMoi muc trong danh muc phai la cong trinh co that. Neu chua doc va kiem "
            "chung duoc mot tai lieu, dung dua vao danh muc."
        )
        return 1

    print("Danh muc tai lieu tham khao khop voi trich dan trong bai.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
