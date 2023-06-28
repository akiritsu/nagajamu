---
title: Linux 软硬件状态查询
---



## 操作系统

### uname

```bash
$ uname -n
Linux mjruser 6.1.31-2-MANJARO #1 SMP PREEMPT_DYNAMIC Sun Jun  4 12:31:46 UTC 2023 x86_64 GNU/Linux
```
[KERNAL_NAME] Linux，对应 uname -s

[NETWORK_NODE_HOSTNAME] mjruser，对应 uname -n

[KERNEL_RELEASE] 6.1.31-2-MANJARO，对应 uname -r

[KERNEL_VERSION] #1 SMP PREEMPT_DYNAMIC Sun Jun  4 12:31:46 UTC 2023，对应 uname -v

[MACHINE_HARDWARE_NAME] x86_64，对应 uname -m

[OPERATING_SYSTEM] GNU/Linux，对应 uname -o

Processor 和 Hardware Platform 为 Unknown，因此没有显示。

### cat /etc/os-release

```bash
$ cat /etc/os-release
NAME="Manjaro Linux"
PRETTY_NAME="Manjaro Linux"
ID=manjaro
ID_LIKE=arch
BUILD_ID=rolling
ANSI_COLOR="32;1;24;144;200"
HOME_URL="https://manjaro.org/"
DOCUMENTATION_URL="https://wiki.manjaro.org/"
SUPPORT_URL="https://forum.manjaro.org/"
BUG_REPORT_URL="https://docs.manjaro.org/reporting-bugs/"
PRIVACY_POLICY_URL="https://manjaro.org/privacy-policy/"
LOGO=manjarolinux
```
###  lsb_release -a

```bash
$  lsb_release -a
LSB Version:	n/a
Distributor ID:	ManjaroLinux
Description:	Manjaro Linux
Release:	23.0.0
Codename:	UltimaThule
```

### hostnamectl

```bash
$ hostnamectl
 Static hostname: mjruser
       Icon name: computer-desktop
         Chassis: desktop 🖥️
      Machine ID: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
         Boot ID: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Operating System: Manjaro Linux
          Kernel: Linux 6.1.31-2-MANJARO
    Architecture: x86-64
 Hardware Vendor: ASUS
  Hardware Model: ProArt X670E-CREATOR WIFI
Firmware Version: 1415
   Firmware Date: Tue 2023-05-16
```

### cat /proc/version

```bash
$ cat /proc/version
Linux version 6.1.31-2-MANJARO (builduser@fv-az462-57) (gcc (GCC) 13.1.1 20230429, GNU ld (GNU Binutils) 2.40.0) #1 SMP PREEMPT_DYNAMIC Sun Jun  4 12:31:46 UTC 2023
```

## 用户名


## 主板信息

## CPU

## 内存

## GPU 

## 综合

## 实时监控