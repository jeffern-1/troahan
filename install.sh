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
    green " Trojan ������尲װϵͳ      "
    green " ϵͳ��centos7+"              "
    green " Twitter:@jeffern12                "
    green " ===================================="
    echo
    red " ===================================="
    yellow " 1. ��ʼ��װ��忩��"
    red " ===================================="
    yellow " 2. BBR PLUS �������ٰ������ɣ�"
    red " ===================================="
    yellow " 0. �˳��ű�"
    red " ===================================="
    echo
    read -p "����������:" num
    case "$num" in
    1)
    install_trojan
    ;;
    0)
    exit 1
    ;;
    *)
    clear
    red "ûѡ�԰�������ѡ���!"
    sleep 1s
    start_menu
    ;;
    esac
}

start_menu