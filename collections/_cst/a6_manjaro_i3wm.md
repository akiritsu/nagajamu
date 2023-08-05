---
title: Build Efficient working Environment with Manjaro and i3wm
highlight: true
---

注：现在 Manjaro 官方已有 i3wm 版本的官方镜像。

## 下载 Manjaro 并烧录至 U 盘

1. 下载 Manjaro：[官方镜像](https://manjaro.org/downloads/official/xfce/)
2. 下载 Rufus：[官方下载](https://rufus.ie/en_US/)
3. 插入 u 盘，打开 Rufus。
4. Device 选项选择待烧录的设备。
5. Boot Device 选项选择下载的镜像。
6. Partition Scheme 默认为 MBR。

## 安装 Manjaro

1. 插入 u 盘，启动电脑，在系统引导前呼出 Bios。
2. 将 Boot 选项卡中的 OS Type 改为 Legacy OS。
3. 打开 Hard Drive BBS Priorities，将烧录好的 U 盘设置为第一项。
4. 保存修改并重启电脑，选择 Boot With Open Source Drivers，进入 Manjaro Live CD 界面。
5. 选择 Launch Installer 打开安装程序。
6. 位置选择当前位置。
7. 键盘布局选择 English US - Default。
8. 分区选择手动分区。
   1. 创建新的 MBR 分区表。
   2. 创建挂载点为/boot 的分区存放系统启动文件，文件系统为 ext4。
   3. 创建挂载点为/的根分区，文件系统为 ext4。
   4. 选择创建/home 分区，文件系统为 ext4。
   5. 若内存小于 8G，选择创建 swap 缓存，文件系统为 linuxswap。
9. 选择安装 Boot loader 位置为硬盘的主引导记录。
10. 设置用户名及密码。
11. 确认安装信息，开始安装 Manjaro 系统。
12. 安装完毕后，重启系统，拔出 u 盘。

## 设置 Manjaro 镜像

1. 自动设置最近的镜像。

```bash
sudo pacman-mirrors -i -c China -m rank
```

2. 在/etc/pacman.conf 文件添加以下内容，添加 Archlinuxcn 镜像。

```bash
[archlinuxcn]
SigLevel = Never
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```

3. 更新包的签名密钥，并更新系统。

```bash
sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring manjaro-keyring
sudo pacman-key --populate archlinuxcn manjaro
sudo pacman-key --refresh-keys
sudo pacman -Syyu
```

## 安装常用软件


```bash
# 常用软件
sudo pacman -S python3 python-pip ruby cloc coq sbcl ghc stack idris agda / # Programming
i3-wm ibus ibus-libpinyin redshift nmon tldr arandr trojan proxychains net-tools calibre / # Utilities
nautilus  alacritty  fragments dolphin emacstexmacs code obs kdenlive blender/ # Productivity
# 字体
sudo pacman -S otf-fira-mono otf-fira-sans ttf-fira-code noto-fonts-cjk adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei
# AUR中的软件
yay -S google-chrome lyx ttf-ms-fonts
# 使用 pip 安装软件
pip install cheat
# 使用 gem 安装软件
gem install bundler jekyll jekyll-sitemap jekyll-feed jekyll-seo-tag
```

说明：
- net-tools 包含了 netstat。
- fragments 是一个 bt 下载工具。
- arandr 用于在 i3-wm 下的显示器、分辨率修改软件，xrandr 的 GUI 版。
- cloc 代码行数统计。
- tldr、cheat 都是命令行提示工具

### troubleshoot 安装时出现依赖冲突：exists in filesystem


```bash
[PACKAGE_NAME]: [FILE_PATH] exists in filesystem
Errors occurred, no packages were upgraded.
```

这是由于不同的软件依赖于同一个来自于不同来源的依赖导致的。覆盖文件即可。命令如下：

```bash
sudo pacman -S [PCKAGE_NAME] --overwrite /PATH/TO/FILE/*
```
 
## 配置 i3-wm 窗口管理器

1. 下载 i3wm-themer 主题。

```bash
cd ~/.config/ && mkdir i3 && cd
git clone https://github.com/unix121/i3wm-themer && cd i3wm-themer
```

2. 安装依赖。

```bash
cd i3wm-themer && pip install -r requirements.txt
./install_arch.sh
```

3. 复制 polybar 脚本。

```bash
cp -r scripts/* /home/$USER/.config/polybar/
```

4. 安装主题，并切换至指定主题。

```bash
python3 i3wm-themer.py --config config.yaml --install defaults/
python3 i3wm-themer.py --config config.yaml --load themes/002.json # alternatives can be 000.json - 012.json
```

5. 编辑/home/$USER/.config/i3/config 文件，自定义 i3-wm。

```bash
# [Modified] keybinding of fuction key
set $mod Mod4
# [Modified] Window kill command
bindsym $mod+Escape kill
# [Modified] start program launcher
bindsym $mod+d exec rofi -show run -lines 10 -eh 1 -width 40 - padding 50  -bw 0 -font "Monospace Regulars 18"

# [Modified] change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+i focus up
bindsym $mod+l focus right

# [Modified] move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+i move up
bindsym $mod+Shift+l move right

# [Appended] Ibus daemon.
exec --no-startup-id export GTK_IM_MODULE=ibus
exec --no-startup-id export XMODIFIERS=@im=ibus
exec --no-startup-id export QT_IM_MODULE=ibus
exec --no-startup-id ibus-daemon --xim -d -r
exec --no-startup-id trojan
exec --no-startup-id redshift -O 5000

# [Modified] Gaps
gaps inner 0
gaps outer 0

smart_gaps on
```

6. 在~/.Xresources 文件中添加以下内容，修改 i3-wm 的 dpi。

```bash
Xft.dpi: 183
```

7. 使用快捷键 Mod + D 运行 rofi-theme-selector 选择 rofi 的主题。按 Alt + A 应用。

## 配置中文输入法

1. 安装 ibus、ibus-libpinyin 后，启动 ibus-setup 添加中文输入法：Input Method - Add - Chinese - Intelligent Pinyin。
2. 将 ibus-daemon 加入开机启动，并设置参数。在~/.config/i3/config 文件末尾添加：

```bash
exec --no-startup-id export GTK_IM_MODULE=ibus
exec --no-startup-id export XMODIFIERS=@im=ibus
exec --no-startup-id export QT_IM_MODULE=ibus
exec --no-startup-id ibus-daemon --xim -d -r
```

### 在 Emacs 中使用 iBus 输入法

在~/.xprofile 中添加如下内容：

```bash
export LC_CTYPE=zh_CN.UTF-8
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
ibus-daemon -d -x
```

### 为 ibus-libpinyin 增加希腊字母输入功能

【方案一】使用希腊字母输入模式
1. 打开 ibus-setup，在 Input Method 中选择 Intelligent Pinyin 的 Preferences。
2. 在弹出的窗口中，选择 User Data 选项卡，编辑 User Lua Script。在打开的文件中添加以下内容：

```lua
_MAPPING_TABLE = [[
a A,α,Alpha
b B,β,Beta
g Γ,γ,Gamma
d Δ,δ,Delta
e Ε,ε,Epsilon,Η,η,Eta
z Ζ,ζ,Zeta
t Θ,θ,Theta,Τ,τ,Tau
i Ι,ι,Iota
k Κ,κ,Kappa
l Λ,λ,Lambda
m Μ,μ,Mu
n Ν,ν,Nu
x Ξ,ξ,Xi
o Ο,ο,Omicron,Ω,ω,Omega
p Π,π,Pi,Φ,φ,Phi,Ψ,ψ,Psi
r Ρ,ρ,Rho
s Σ,σ,Sigma
u Υ,υ,Upsilon
c Χ,χ,Chi
]]

_MAPPING = ime.parse_mapping(_MAPPING_TABLE, "\n", " ", ",")

function GreekAlphabet(input)
if _MAPPING[input] then
return _MAPPING[input]
else
error("Invalid argument")
end
end

ime.register_command("ga", "GreekAlphabet", "希腊字母")
```

3. 输入 ibus restart 重启 ibus。
4. 使用ibus时，依次按，“i”，“ ”，“g”，“a”开启希腊字母输入模式，并根据上表选择输入的希腊字母。

【方案二】将希腊字母等符号加入候选词

## 配置魔法渡河

1. 修改/etc/trojan/config.json 文件，配置 trojan。配置文本由魔法提供商提供。
2. 修改/etc/proxychains.conf 文件，配置 proxychains。将最后一行更改为：

```bash
sock5 127.0.0.1 1080
```

3. 在 Chrome 中安装 SwitcyhOmega 插件，运行：

```bash
google-chrome-stable --proxy-server=socks5://127.0.0.1:1080
```

4. 访问 Chrome 插件商店，搜索并安装 SwitchyOmega。
5. 打开 SwitchyOmega 设置界面，导入配置文件。
6. 开机自动启动 trojan。在~/.config/i3/config 文件末尾添加：

```bash
exec --no-startup-id trojan
```

## 配置 Git

1. 配置 git 代理。

```bash
git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080
```

2. 设置账号。

```bash
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

3. 记忆账号密码。

```bash
git config --global credential.helper store
```

## 配置 Visual Studio Code

1. 安装插件：Awesome Emacs Keymap，Markdown All in One, Prettier，Org Mode。

2. 在 Preference 的 Editor:Font Family 选项中添加两种字体。

3. 启用 Fira Code 的连体字符，将 settings.json 中的 editor.fontLigatures 的值设置为 true。

## 配置 Alacritty

1. 新建 ~/.config/Alacritty/alacritty.yml，添加以下内容。

```bash
# XTerm's default colors
font:
  normal:
    family: monospace
    style: Regular

  bold:
    family: monospace
    style: Bold

  italic:
    family: monospace
    style: Italic

  bold_italic:
    family: monospace
    style: Bold Italic

  size: 18

env:
  WINIT_X11_SCALE_FACTOR: "1.0"

colors:
  # Default colors
  primary:
    background: '0x000000'
    foreground: '0xffffff'
  # Normal colors
  normal:
    black:   '0x000000'
    red:     '0xcd0000'
    green:   '0x00cd00'
    yellow:  '0xcdcd00'
    blue:    '0x0000ee'
    magenta: '0xcd00cd'
    cyan:    '0x00cdcd'
    white:   '0xe5e5e5'

  # Bright colors
  bright:
    black:   '0x7f7f7f'
    red:     '0xff0000'
    green:   '0x00ff00'
    yellow:  '0xffff00'
    blue:    '0x5c5cff'
    magenta: '0xff00ff'
    cyan:    '0x00ffff'
    white:   '0xffffff'
```

## 文件共享 Samba

1. 修改文件 /etc/samba/smb.conf 配置 samba：

```bash
[global]
workgroup = ArbitraryGroup
server string = Samba Server Version %v
log file = /var/log/samba/log.%m
max log size = 50
security = USER
passdb backend = tdbsam

[database]
comment = passwd
path = /home/share
public = no
writable = yes 
```

创建用于登陆的账户：

```bash
sudo useradd samba
sudo passwd samba
id samba
pdbedit -a -u samba
```
创建共享的文件夹，并重启samba服务：

```bash
mkdir /home/databases
sudo systemctl restart smb
```

## 护眼软件 redshift

启动redshift（或加入 i3wm 的配置文件：

```bash
redshift -O 5000
```
其中后面数字控制色温，数值越大屏幕越黄。

移除redshift：

```bash
redshift -x
```

## Nvidia 显卡驱动（可选）

```bash
# 查看已经安装的驱动
inxi -G
# 自动安装Nvidia官方驱动
sudo mhwd -a pci nonfree 0300
# 安装完成后，重启电脑

# 查看已经安装的驱动
mhwd -li
# 更改分辨率、刷新率
sudo nvidia-settings
# 在 X Server Display Configuration 页面中更改，并将其保存至 /etc/X11/mhwd.d/nvidia.conf

# 应用更改
sudo mhwd-gpu --setmod nvidia --setxorg /etc/X11/mhwd.d/nvidia.conf
```

如果存在双显卡，安装的hybrid驱动无法支持独显输出。手动安装单Nvidia驱动：

```bash
sudo mhwd -i pci video-nvidia
```
重启以应用更改。

## 数学计算 Matlab

1. 下载安装并魔法 Matlab 2018。

```bash
# Download Matlab2018R by BaiduNetDisk
sudo mkdir /mnt/matlab
sudo mount -o loop R2018b_glnxa64_dvd1.iso
sudo /mnt/matlab/install
# Key: 09806-07443-53955-64350-21751-41297
sudo umount R2018b_glnxa64_dvd1.iso && sudo mount -o loop R2018b_glnxa64_dvd2.iso
# Crack
unrar e Crack.rar Crack && cd Crack
sudo cp -f license_standalone.lic /usr/local/MATLAB/R2018a/licenses
sudo cp -rf R2018a/* /usr/local/MATLAB/R2018a/
sudo chmod -R 777 /usr/local/MATLAB/
# Run MATLAB
sh /usr/local/MATLAB/R2018a/bin/matlab
# Add Alias
nano ~/.bash_profile
# [Appended] MATLAB shortcut
alias matlab="sh /usr/local/MATLAB/R2018a/bin/matlab"
```

## 配置 Mozart Oz 环境

1. 安装 Oz。

```bash
# Mozart 1.4
# Resolve dependencies
sudo apt-get install flex bison tcl8.5 tcl8.5-developing lzip libx11-6:i386 libgmp10:i386 lib32stdc++6
wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.lz
lzip -d gmp-6.1.2.tar.lz
tar -xvf gmp-6.1.2.tar
cd gmp-6.1.2
./configure
make
sudo make install
# install mozart 1.4 in amd64
sudo alien -g mozart-1.4.0.20080704-16189.i386.rpm
cd mozart-1.4.0.20080704
vi debian/control
# Add "amd64" in the Architecture field. The file may look like:
Architecture: i386, amd64
# Make .deb package
sudo debian/rules binary
# Install binary files:
sudo dpkg -i mozart-1.4.0.20080704-16189.i386.deb
# Append codes below to Emacs config
```

2. 配置 Emacs。

```lisp
(or (getenv "OZHOME")
    (setenv "OZHOME"
            "/usr/local/oz"))   ; or wherever Mozart is installed
(setenv "PATH" (concat (getenv "OZHOME") "/bin:" (getenv "PATH")))

(setq load-path (cons (concat (getenv "OZHOME") "/share/elisp")
                      load-path))

(setq auto-mode-alist
      (append '(("\\.oz\\'" . oz-mode)
                ("\\.ozg\\'" . oz-gump-mode))
              auto-mode-alist))

(autoload 'run-oz "oz" "" t)
(autoload 'oz-mode "oz" "" t)
(autoload 'oz-gump-mode "oz" "" t)
(autoload 'oz-new-buffer "oz" "" t)
```

## 解决 Obs 无法启动、VLC 播放器解码错误的问题

Obs 错误代码：

```bash
debug: Found portal inhibitor
debug: Attempted path: share/obs/obs-studio/locale/en-US.ini
debug: Attempted path: /usr/share/obs/obs-studio/locale/en-US.ini
debug: Attempted path: share/obs/obs-studio/locale.ini
debug: Attempted path: /usr/share/obs/obs-studio/locale.ini
debug: Attempted path: share/obs/obs-studio/themes/Yami.qss
debug: Attempted path: /usr/share/obs/obs-studio/themes/Yami.qss
info: Using EGL/X11
info: CPU Name: AMD Ryzen 9 7950X 16-Core Processor
info: CPU Speed: 3455.782MHz
info: Physical Cores: 16, Logical Cores: 32
info: Physical Memory: 63426MB Total, 53403MB Free
info: Kernel Version: Linux 6.1.31-2-MANJARO
info: Distribution: "Manjaro Linux" Unknown
info: Session Type: x11
info: Window System: X11.0, Vendor: The X.Org Foundation, Version: 1.21.1
info: Qt Version: 6.5.0 (runtime), 6.5.0 (compiled)
info: Portable mode: false
qt.core.qmetaobject.connectslotsbyname: QMetaObject::connectSlotsByName: No matching signal for on_tbar_position_valueChanged(int)
info: OBS 29.0.2-5 (linux)
info: ---------------------------------
info: ---------------------------------
info: audio settings reset:
	samples per sec: 48000
	speakers:        2
	max buffering:   960 milliseconds
	buffering type:  dynamically increasing
info: ---------------------------------
info: Initializing OpenGL...
info: Loading up OpenGL on adapter NVIDIA Corporation NVIDIA GeForce RTX 4090/PCIe/SSE2
info: OpenGL loaded successfully, version 3.3.0 NVIDIA 530.41.03, shading language 3.30 NVIDIA via Cg compiler
info: ---------------------------------
info: video settings reset:
	base resolution:   1920x1080
	output resolution: 1280x720
	downscale filter:  Bicubic
	fps:               30/1
	format:            NV12
	YUV mode:          Rec. 709/Partial
info: NV12 texture support not available
info: P010 texture support not available
info: Audio monitoring device:
	name: Default
	id: default
info: ---------------------------------
warning: Failed to load 'en-US' text for module: 'decklink-captions.so'
warning: Failed to load 'en-US' text for module: 'decklink-output-ui.so'
libDeckLinkAPI.so: cannot open shared object file: No such file or directory
warning: A DeckLink iterator could not be created.  The DeckLink drivers may not be installed
warning: Failed to initialize module 'decklink.so'
info: [pipewire] No captures available
warning: v4l2loopback not installed, virtual camera disabled
info: NVENC supported
info: VAAPI: API version 1.18
Segmentation fault (core dumped)
```
这可能是因为 obs 已经不支持 libva-vdpau-driver。

解决方法为使用 nvidia-vaapi-driver 替换 libva-vdpau-driver。

```bash
sudo pacman -R libva-vdpau-driver
sudo pacman -S nvidia-vaapi-driver
```

## 虚拟机软件 VirtualBox

查看内核版本：

```bash
mhwd-kernel -li
```

根据对应的版本，安装 VirtualBox：

```bash
# 当内核版本为 linux61 时
sudo pacman -Syu sudo pacman -Syu virtualbox linux61-virtualbox-host-modules
sudo vboxreload
```

验证安装：
```bash
vboxmanage --version
```

若因网络原因无法下载 VBoxGuestAdditions_x.x.x.iso，则可在该处下载对应版本的 iso 镜像文件。

http://download.virtualbox.org/virtuox/7.0.8/

## SSH

```bash
sudo pacman -S openssh
sudo systemctl status sshd.service  # default=disable
sudo systemctl enable sshd.service
sudo systemctl start sshd.service
```

## 性能监控 Prometheus + Grafana

暂无。