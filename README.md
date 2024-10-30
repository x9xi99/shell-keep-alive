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
将 60 替换为您希望的时间间隔（单位为秒）。

使用 tmux
tmux 是一个终端复用器，允许您在一个窗口中创建多个会话。您可以使用 tmux 来保持会话活跃，同时运行其他命令。

安装 tmux
如果您的系统尚未安装 tmux，可以使用以下命令安装：

bash
复制代码
sudo yum install tmux -y
使用 tmux
启动 tmux 会话：

bash
复制代码
tmux
在 tmux 会话中运行保活脚本：

bash
复制代码
./keep_alive.sh
离开 tmux 会话：按下 Ctrl + B，然后按 D。

重新连接到 tmux 会话：

bash
复制代码
tmux attach
使用 screen
screen 是另一个终端复用器，类似于 tmux，允许您在多个窗口之间切换。

安装 screen
如果您的系统尚未安装 screen，可以使用以下命令安装：

bash
复制代码
sudo yum install screen -y
使用 screen
启动 screen 会话：

bash
复制代码
screen
在 screen 会话中运行保活脚本：

bash
复制代码
./keep_alive.sh
离开 screen 会话：按下 Ctrl + A，然后按 D。

重新连接到 screen 会话：

bash
复制代码
screen -r
停止脚本
要停止脚本的运行，您可以按 Ctrl + C 来终止当前的 Shell 会话。
