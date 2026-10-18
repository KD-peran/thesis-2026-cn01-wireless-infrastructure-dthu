#!/usr/bin/env node
/**
 * Đối chiếu các khóa trích dẫn \cite{key} trong LaTeX với file .bib.
 * Đảm bảo 100% tài liệu trích dẫn trong văn bản đều có mặt trong danh mục.
 */

const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(__dirname, '..', '..');
const texDir = path.join(rootDir, 'latex');
const bibPath = path.join(rootDir, 'bao-cao', 'tai-lieu-tham-khao.bib');

function getCitedKeys(dir) {
  const cited = new Set();
  const citeRegex = /\\(?:[a-zA-Z]*cite[a-zA-Z]*)\s*(?:\[[^\]]*\]\s*)*\{([^}]+)\}/g;

  function walk(currentDir) {
    if (!fs.existsSync(currentDir)) return;
    const entries = fs.readdirSync(currentDir, { withFileTypes: true });
    for (const entry of entries) {
      const fullPath = path.join(currentDir, entry.name);
      if (entry.isDirectory()) {
        walk(fullPath);
      } else if (entry.name.endsWith('.tex')) {
        const content = fs.readFileSync(fullPath, 'utf-8');
        const lines = content.split('\n');
        for (const line of lines) {
          if (line.trim().startsWith('%')) continue;
          let match;
          while ((match = citeRegex.exec(line)) !== null) {
            const keys = match[1].split(',').map(k => k.trim());
            keys.forEach(k => { if (k && k !== '*') cited.add(k); });
          }
        }
      }
    }
  }

  walk(dir);
  return cited;
}

function getBibKeys(file) {
  const keys = new Set();
  if (!fs.existsSync(file)) {
    console.warn(`[CẢNH BÁO] Không tìm thấy file: ${file}`);
    return keys;
  }
  const content = fs.readFileSync(file, 'utf-8');
  const bibRegex = /@\w+\s*\{\s*([^,\s]+)\s*,/g;
  let match;
  while ((match = bibRegex.exec(content)) !== null) {
    keys.add(match[1].trim());
  }
  return keys;
}

function main() {
  console.log("==> Bắt đầu kiểm tra tính nhất quán trích dẫn...");
  const citedKeys = getCitedKeys(texDir);
  const bibKeys = getBibKeys(bibPath);

  console.log(`[*] Tổng số trích dẫn trong các tệp LaTeX: ${citedKeys.size}`);
  console.log(`[*] Tổng số mục trong file .bib: ${bibKeys.size}`);

  const missing = [];
  for (const key of citedKeys) {
    if (!bibKeys.has(key)) {
      missing.push(key);
    }
  }

  if (missing.length > 0) {
    console.log(`\n[LỖI LIÊM CHÍNH HỌC THUẬT] Phát hiện ${missing.length} khóa trích dẫn chưa có trong .bib:`);
    missing.sort().forEach(k => console.log(`   -> ❌ ${k}`));
    process.exit(1);
  } else {
    console.log('\n[CHÚC MỪNG] Tất cả các trích dẫn đều hợp lệ và nhất quán 100%!');
    process.exit(0);
  }
}

main();
