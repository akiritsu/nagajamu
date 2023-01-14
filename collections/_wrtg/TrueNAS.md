---
title: TrueNAS Scale + 手搓内网 NAS 服务器
---

## 硬件规格

CPU：Intel Xeon E5-1235L v5 25wTDP

主板：MSI C236A Workstation

内存：SK Hynix DDR4 2133mHz ECC  8G*2

SSD：Samsung PM961 512G

HHD：希捷 Exos ST1800NM000J 氦气企业级硬盘 18TB * 6

电源： MSI MPG A650GF 650W 金牌全模组

机箱：SAMA 掠食者 10 硬盘位 EATX 机箱

散热器：利民 Phantom Assassin 120 SE

UPS：APC 施耐德 BK650M2-CH 650VA



## TrueNAS Scale 快速使用

### 1.制作 TrueNAS 安装 U 盘并安装系统

安装系统
1. 下载  TrueNAS 镜像，使用 Rufus 以默认设置制作安装 U 盘。
2. 安装系统，设置 Admin 密码

在客户机的浏览器上，`输入 NAS 主机的内网地址`访问控制页面，`输入刚刚设置的 Admin 账户和密码`。

### 2.更改语言、时区（optional）

`System - General - Localization Settings - SETTINGS - Asia/Shanghai - SAVE`

### 3.关闭 DHCP 服务，固定 IP 地址

`Network - Interfaces - 点击对应的网卡 - 取消勾选 DHCP - ADD - 在 Aliases 的 IP Addresses 中，输入欲访问的地址、掩码（一般为24） - APPLY`

此时出现手动设置网关，在对话框中输入。

此时出现测试设置对话框。

`勾选 Confirm，点击 Test Changes - Apply Changes。`

此时重新登陆更改后的 IP 地址，会出现确认更改内容的对话框，点击`确认`。之后提示设置已更改。

### 4.设置主机名称、 DNS 服务器

`Network - Interfaces - Global Configuration - SETTINGS - 输入 hostname - 输入 DNS 地址`

### 5.创建 pool 和 dataset

创建 pool：

`Storage - Create Pool - 在 Pool Manager 中，键入名称 - 选中所有硬盘，添加进 Data VDev 中 - 在 Data VDev 中选择阵列模式 - Create - 弹出警告窗口，选中 Confirm，并点击 Create Pool`

> 阵列模式中：Stripe 为 Raid 0，Mirror 为 Raid 1，此外还有 Z1、Z2、Z3。

pool的根目录位于：/mnt/[POOLNAME]

创建 dataset：

`Dataset - ADD DATASET - 键入 Dataset 名称 - SAVE`

### 6.添加用户

`Credentials - Local User - ADD - 键入Full Name、Username、Password - （optional）设置 Home Directory - SAVE`

### 7.更改 Dataset 的访问权限

`Datasets - Permissions - EDIT - 给 Other 组勾选写入权限`

### 8.使用 Samba 共享

`Shares - 点击 Windows(SMB) Shares 的“⋮”标志，点击 Turn On Service - ADD - 选中需要共享的数据集 - SAVE - 弹出的对话框中选择 Restart Service`



## TrueNAS Core 快速使用

### 1.制作 TrueNAS 安装 U 盘并安装系统

安装系统
1. 下载  TrueNAS 镜像，使用 Rufus 以默认设置制作安装 U 盘。
2. 安装系统，设置 root 密码，以 Bios 模式启动

在客户机的浏览器上，`输入 NAS 主机的内网地址`访问控制页面，`输入刚刚设置的 root 账户和密码`。

### 2.更改语言、时区（optional）

`System - General - Language 选 Simplified Chinese - Asia/Shanghai - SAVE`

### 3.关闭 DHCP 服务，固定 IP 地址

`Network - Interface - ">"(Expand Row) EDIT - 取消勾选 DHCP - 输入 IP Addresses - ADD - APPLY`

此时出现是否 Apply Changes，如果 60 秒内无操作，则回滚设置。

`勾选 Confirm，点击 Test Changes - Apply Changes。`

此时重新登陆更改后的 IP 地址，会出现确认更改内容的对话框，点击`确认`。之后提示设置已更改。

### 4.新建 group 和 user

建立群组：

`Accounts - Groups - 添加群组 - 键入群组名称 - APPLY`

建立用户：

`Accounts - Users - 添加用户 - 键入用户名、密码 - 取消勾选“新建主要组” - APPLY`

### 5.新建 pool 和 dataset

新建 pool：

`Storage - Pool - ADD POOL - 键入池名称 - 选择添加的磁盘 - 勾选 ENFORCE - 弹出确认对话框，点击 Continue - 弹出警告对话框，勾选确认、点击 Create Pool`

若删除池，在池的右上角`设置 - 导出/断开链接`即可。

新建 dataset：

在存储选项页中，`点击欲添加数据集右侧的“⋮”标志 - 键入数据集名称 - 共享方式选择 SMB - APPLY`

### 6.更改访问权限

只能更改数据集的访问权限，而不能更改池。

在存储选项页中，`点击欲更改权限的数据集右侧的“⋮”标志 - 点击查看权限 - EDIT - 选择欲更改权限的用户`

### 7.使用 Samba 服务共享

开启 SMB 服务：

`Sevice - 开启 SMB 的按钮 - 勾选开机自启`

共享创建的数据集：

`Share - Windows Share(SMB) - 点击添加 - 选择刚才新建的池 - APPLY`

### 8.在客户机上映射网络服务器or添加网络位置


## 使用 NAS 存储服务

### Windows

`Win+x 开启运行 - 输入 \\ + NAS 服务器的内网地址 - 运行`

在打开的文件夹中，右键点击 Dataset 的文件夹，点击“映射为网络驱动器“，即可在计算机根文件夹中看到此驱动器。

### Linux

1. 安装 smbclient

```bash

# arch/manjaro
sudo pacman -S smbclient
# debian/ubuntu
sudo apt install smblient
# RHEL
sudo yum install samba-client
```

2. 访问 Samba 共享资源

```bash
smbclient //[HOSTHAME_OR_IP]/[SHARE_NAME] -U [USERNAME]
```
3. 根据提示输入密码，成功连接后，显示 smb: \> 命令行。

4. 将 datasets 挂载到本地：安装 cifs-utils，并创建挂载点

```bash
sudo mkdir /mnt/[MOUNT_DIR_NAME]
```
5. 将远程目录挂载在刚建好的本地目录上

```bash
sudo mount -t cifs //[HOSTHAME_OR_IP]/[SHARE_NAME] /mnt/[MOUNT_DIR_NAME] -o username=[USERNAME],password=[PASSWORD],iocharset=utf8,dir_mode=0777,file_mode=0777
```
> 使用 df-h 查看挂载情况；使用 ll /mnt/[MOUNT_DIR_NAME] 查看文件

6. 取消挂载

```bash
umount /mnt/smbmount
```

7. 设置开机自动挂载

在 /etc/fstab 文件中加入以下内容：

```bash
//[HOSTNAME_OR_IP]/[SHARE_NAME] /mnt/[MOUNT_DIR]  cifs  username=[USERNAME],password=[PASSWORD],soft,rw  0 0

```

## 基础知识

### 主要 NAS 操作系统比较

TureNAS Core
- 由 FreeNAS 演化而来，基于 FreeBSD；
- 开源系统，支持网卡型号多，适合高速存储
- ZFS，支持数据实时压缩；利用内存为缓存，保持硬盘寿命；实时快照功能

TrueNas Scale
- 基于 Debian，增加了 Docker 和虚拟机的支持

群晖
- 支持网卡型号少、万兆升级贵
- 有应用商店，不需要手动换安装源
- 拥有文件回收站、快照、版本控制功能。
- 手机 app 支持好，如 Moments 管理照片；Drive 管理文档；Plex 管理视频

UNRAID
- 拥有校验盘机制
- 对于不同容量的硬盘支持较好
- 无法组建 Raid

openmediavault
- 相当于去掉套件中心、app服务的免费版群晖
- 使用 protainer 管理 Docker
- 可安装 ZFS，支持快照


### Raid 模式比较

Raid 0：两盘并联，不损失容量，无冗余，速度快；任意一盘损坏则数据丢失。安全性低。

Raid 1：N 盘互为镜像，损失 N-1 盘容量，读取速度翻 N 倍，写入速度不变；至多可损坏 N-1 块硬盘（N至少为2）。性价比低。

Raid 2：至少 3 盘、分段写入、实时编码、汉明码校验。读写时校验数据，硬件开销大。

Raid 3：由 Raid 2 衍生，至少 3 盘、专门设立校校验。每次读写都访问校验盘，因而易损坏。校验盘损坏则数据丢失。以 Bit 分割数据。

Raid 4：由 Raid 3 衍生，以数据块分割数据。小文件读取快，但非校验盘损坏时，数据恢复概率较 Raid 3 低。

Raid 5：类似 Raid 3，分散存储校验数据，至少 3 盘，损失 1 盘空间。至多可损坏 1 盘。有极低概率造成 URE（不可恢复性读取错误），在重建阵列时出现则需要重新开始。重建难度大，安全性较 Raid 6 低。

Raid F1：由 Raid 5 衍生，适用于固态硬盘。

Raid 6：类似 Raid 5，至少 4 盘，两盘校验。至多可损坏 2 盘。写入慢于 Raid 5。

Raid 7：专利属于 SCC 公司，需付费。

Raid 10：至少 4 盘，硬盘两两先组成 Raid 1，再组成 Raid 0。损失 50% 容量。安全性高。

JBOD：将所有硬盘组成一个逻辑分区，读取速度不变，不损失容量。第一块盘记录数据分段表，损坏则阵列损坏；其他盘损害只影响自身数据。安全性低。

Unraid：使用 1-2 盘作为数据校验盘。至多可损坏 1-2 盘，非校验盘损坏只影响自身数据。便于扩容。写入最慢，收费。

SHR：群晖特有，自动判断 Raid 模式，适合新手。可设置 1-2 冗余盘。

Raid Z：ZFS 文件系统特性，不需要额外软硬件。需要大量内存，最好为 ECC 内存。扩容难。
  - Raid Z1：类似 Raid 5，2 盘数据、1 盘校验。
  - Raid Z2：类似 Raid 6，2 盘数据、2 盘校验。
  - Raid Z3：2 盘数据、3 盘校验。

### 应用场景

- 手机相机的图片视频备份
- 家庭影院的片源存档
- Windows/MacOS 系统备份
- 手机、电脑 NAS 多客户端
- 高速、安全存储
- 多用户权限控制
- 文件删除恢复、快照、版本控制
- 文件远程存储、取用