
# PythonRunner
解决 Windows 下双击 `.py` 文件运行后**CMD窗口一闪而过**，无法查看报错、运行日志的一键部署工具。

## ✨ 核心功能
- 双击 `.py` 文件自动通过原生 CMD 运行脚本
- 程序正常结束 / 代码异常报错后**强制暂停窗口**，按任意键关闭
- 一键自动配置系统注册表关联，无需手动操作
- 轻量无依赖，不破坏原有 Python 环境
- 提供打包好的 EXE 版本，**开箱即用**

## 📂 仓库文件说明
- `runpy.cmd`：核心运行脚本
- `runpy.ps1`：PowerShell 一键安装脚本

## 🚀 三种安装方式（推荐优先选 Release EXE）
### 方式1：Release 一键安装（最简单，推荐）
1. 前往右侧 **Releases**，下载最新版 `PythonRunner.exe`
2. 双击运行 EXE，自动完成全部配置
3. 安装后双击任意 `.py` 文件即可生效

### 方式2：PowerShell 脚本安装
1. 克隆仓库
bash
git clone https://github.com/yuhe6021/PythonRunner.git
cd PythonRunner
2. 以管理员身份打开 PowerShell，执行
.\runpy.ps1
### 方式 3：手动部署
1. 将 runpy.cmd 复制到 C:\Windows\System32
2. 将 .py 文件默认打开方式关联为 runpy.cmd
