#!/bin/bash

#fonts color
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}

function bbr_boost_sh(){
    bash <(curl -L -s -k "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh")
}

start_menu(){
    clear
    green " ===================================="
    green " Trojan 控制面板安装系统      "
    green " 系统：centos7+"              "
    green " Twitter:@jeffern12                "
    green " ===================================="
    echo
    red " ===================================="
    yellow " 1. 开始安装面板咯！"
    red " ===================================="
    yellow " 2. BBR PLUS 开启飞速般的体验吧！"
    red " ===================================="
    yellow " 0. 退出脚本"
    red " ===================================="
    echo
    read -p "请输入数字:" num
    case "$num" in
    1)
    install_trojan
    ;;
    0)
    exit 1
    ;;
    *)
    clear
    red "没选对哎！重新选择吧!"
    sleep 1s
    start_menu
    ;;
    esac
}

start_menu