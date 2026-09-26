# esrrhs.xyz

个人网站 [esrrhs.xyz](http://esrrhs.xyz)

## 部署（gq）

```bash
cd /home/project/esrrhs.xyz
./start.sh
```

`start.sh` 会拉代码、安装 `conf/nginx.conf` 并 reload nginx。

当前 nginx 只保留：

| 域名 | 用途 |
|------|------|
| `esrrhs.xyz` | 301 到 `www.esrrhs.xyz` |
| `www.esrrhs.xyz` | 静态主页（`html/`） |
| `majiang.esrrhs.xyz` | 反代本机 `127.0.0.1:8888` |
| `doudizhu.esrrhs.xyz` | 反代本机 `127.0.0.1:8889` |
