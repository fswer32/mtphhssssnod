FROM python:3.11-slim

WORKDIR /

# 复制 mtg 二进制与配置文件
COPY mtg /mtg
COPY config.toml /config.toml

# 给 mtg 执行权限
RUN chmod +x /mtg

# 容器启动时执行你的命令
ENTRYPOINT ["sh", "-c", "chmod 777 /mtg && /mtg run /config.toml"]
