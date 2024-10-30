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

## screen使用教程

`screen` 是一个多功能的终端多路复用器，可以在单个终端窗口中运行多个程序，即使网络断开或关闭终端，后台的会话仍然保持活跃。



```bash
1. 安装screen

# Debian/Ubuntu 系统
sudo apt update
sudo apt install screen

# CentOS/RHEL 系统
sudo yum install screen

2. 基本命令
启动一个新的会话：

bash
复制代码
screen
命名新会话：

bash
复制代码
screen -S <session_name>
列出所有会话：

bash
复制代码
screen -ls
重新连接到指定会话：

bash
复制代码
screen -r <session_name>
分离当前会话： 使用快捷键 Ctrl + A 然后按 D，即可将当前会话放在后台，返回主终端。

3. 常用快捷键
快捷键以 Ctrl + A 开始，然后输入其他按键完成操作：

Ctrl + A, D：分离当前会话
Ctrl + A, C：创建一个新的窗口
Ctrl + A, N：切换到下一个窗口
Ctrl + A, P：切换到上一个窗口
Ctrl + A, K：关闭当前窗口
Ctrl + A, "（双引号）：显示窗口列表
```





