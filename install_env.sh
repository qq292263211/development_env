#!/bin/bash
cd /etc/apt/
sudo cp sources.list sources.list.bak
# 指定要创建的文本文件的名称和路径
file_name="sources.list"

# 使用单引号括起来，以保持源内容的格式
sourceList="  deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse"

# 使用双引号将变量括起来，并在echo语句中输出变量的内容
echo "$sourceList" > "$file_name"
sudo apt-get update
sudo apt-get upgrade
echo "换源成功!"

echo "开始下载ompl安装脚本!"

wget https://ompl.kavrakilab.org/install-ompl-ubuntu.sh

chmod u+x install-ompl-ubuntu.sh

./install-ompl-ubuntu.sh --app

