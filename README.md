# Shell Keep Alive Script

该脚本旨在帮助用户在 AWS CloudShell 或其他 Linux 环境中保持会话活跃，防止因长时间未活动而自动终止。

## 功能

- 定期发送心跳信号以保持会话活跃
- 可配置的心跳间隔
- 简单易用的一键运行命令

## 安装

您可以使用 `curl` 或 `wget` 一键下载并运行该脚本。请按照以下步骤操作：

### 使用方法

1. **打开 AWS CloudShell 或其他终端**。

2. **运行以下命令以下载并执行脚本**：

   - 使用 `curl`：

     ```bash
     curl -O https://raw.githubusercontent.com/x9xi99/shell-keep-alive/main/keep_alive.sh && chmod +x keep_alive.sh && ./keep_alive.sh
     ```

   - 使用 `wget`：

     ```bash
     wget https://raw.githubusercontent.com/x9xi99/shell-keep-alive/main/keep_alive.sh && chmod +x keep_alive.sh && ./keep_alive.sh
     ```

## 自定义

您可以根据需要修改脚本中的心跳时间间隔。在 `keep_alive.sh` 中找到以下行：

```bash
# 定义心跳时间间隔（单位：秒）
HEARTBEAT_INTERVAL=60
