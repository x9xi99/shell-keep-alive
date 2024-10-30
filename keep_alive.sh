#!/bin/bash

# 定义心跳时间间隔（单位：秒）
HEARTBEAT_INTERVAL=60

# 启动 Cloudflare Tunnel
cloudflared tunnel run my-tunnel &

# 启动 Firefox
export DISPLAY=:0
firefox &

# 保持会话活跃
while true; do
    # 发送心跳信号，确保会话不超时
    echo "保持会话活跃 $(date)"
    sleep $HEARTBEAT_INTERVAL
done
