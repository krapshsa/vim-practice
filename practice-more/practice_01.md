Q: 複製 + 增加前後綴 + 交換參數

快速寫完這段 bash script
```
mv /some/where/i_am_a.conf /some/where/.i_am_a.conf.bak
mv /some/where/.i_am_a.conf.bak /some/where/i_am_a.conf
```

A:
```
# 打完前半部
imv<Space>/some/where/i_am_a.conf<Esc>

# 往回複製從 f 到 空格 這邊用 yT<Space> 會少一個 f 要再看文件確認下
vF<Space>y

# 貼到最後面
$p

# 補個 suffix .bak
a.bak<Esc>

# 補個 prefix . (有 vim-surround 的話其實可以 visual 選起來後 S.$abak 也行)
Fii.<Esc>

# 複製一行 位置會跑到複製那行的最前面
yyp

# 剪下第一個檔案路徑 (包含 space)
f<Space>vt<Space>d

# 往後貼
$p
```
