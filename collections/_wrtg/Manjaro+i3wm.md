---
title: 工作环境：Manjaro + i3 Windows Manager 高效窗口切换系统
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

2. 在/etc/acman.conf 文件添加以下内容，添加 Archlinuxcn 镜像。

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
sudo pacman -S pacaur google-chrome cloc nmon tldr  emacs lyx texmacs coq sbcl ghc stack idris agda arander yaourt dolphin
```

## 配置 i3-wm 窗口管理器

1. 安装 i3-wm。

```bash
sudo pacman -S i3-wm
```

2. 下载 i3wm-themer 主题。

```bash
cd ~/.config/ && mkdir i3 && cd
git clone https://github.com/unix121/i3wm-themer && cd i3wm-themer
```

3. 安装依赖。

```bash
cd i3wm-themer && sudo pip install -r requirements.txt
./install_arch.sh
```

4. 复制 polybar 脚本。

```bash
cp -r scripts/* /home/$USER/.config/polybar/
```

5. 安装主题，并切换至指定主题。

```bash
python3 i3wm-themer.py --config config.yaml --install defaults/
python3 i3wm-themer.py --config config.yaml --load themes/002.json # alternatives can be 000.json - 012.json
```

6. 编辑/home/$USER/.config/i3/config 文件，自定义 i3-wm。

```bash
# [Modified] keybinding of fuction key
set $mod Mod4
# [Modified] Window kill command
bindsym $mod+Escape kill
# [Modified] start program launcher
bindsym $mod+d exec rofi -show run -lines 10 -eh 1 -width 40 - padding 50  -bw 0 -font "Monospace Regulars 18"

# [Appended] Ibus daemon.
exec --no-startup-id export GTK_IM_MODULE=ibus
exec --no-startup-id export XMODIFIERS=@im=ibus
exec --no-startup-id export QT_IM_MODULE=ibus
exec --no-startup-id ibus-daemon --xim -d -r
```

7. 在~/.Xresources 文件中添加以下内容，修改 i3-wm 的 dpi。

```bash
Xft.dpi: 183
```

## 配置中文输入法

1. 安装 ibus ibus-pinyin。

```bash
sudo pacman -S ibus ibus-libpinyin
```

2. 将 ibus-daemon 加入开机启动，并设置参数。在~/.config/i3/config 文件末尾添加：

```bash
exec --no-startup-id export GTK_IM_MODULE=ibus
exec --no-startup-id export XMODIFIERS=@im=ibus
exec --no-startup-id export QT_IM_MODULE=ibus
exec --no-startup-id ibus-daemon --xim -d -r
```

## 配置魔法渡河

1. 安装 trojan 和 proxychains。

```bash
sudo pacman -S trojan proxychains
```

2. 修改/etc/trojan/config.json 文件，配置 trojan。配置文本由魔法提供商提供。
3. 修改/etc/proxychains.json 文件，配置 proxychains。将最后一行更改为：

```bash
sock5 127.0.0.1 1080
```

4. 在 Chrome 中安装 SwitcyhOmega 插件，运行：

```bash
google-chrome-stable --proxy-server=socks5://127.0.0.1:1080
```

5. 访问 Chrome 插件商店，搜索并安装 SwitchyOmega。
6. 打开 SwitchyOmega 设置界面，导入配置文件。
7. 开机自动启动 trojan。在~/.config/i3/config 文件末尾添加：

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

1. 安装插件：Awesome Emacs Keymap,Markdown All in One, Prettier。
2. 安装思源字体、文泉驿字体。

```bash
sudo pacman -S noto-fonts-cjk adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei
```

3. 安装 Fira Code 字体。

```bash
sudo pacman -S otf-fira-mono otf-fira-sans ttf-fira-code
```

4. 在 Preference 的 Editor:Font Family 选项中添加两种字体。
5. 启用 Fira Code 的连体字符，将 settings.json 中的 editor.fontLigatures 的值设置为 true。

## 配置 Alacritty

1. 安装 Alacritty。

```bash
sudo pacman -S alacritty
```

2. 新建~/.config/Alacritty/alacritty.yml，添加以下内容。

```bash
# XTerm's default colors
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

## 安装 Bundler 和 Jekyll

1. 安装 Ruby。

```bash
sudo pacman -S ruby
```

2. 将 gem 添加至 PATH，在~/.bashrc 中添加：

```bash
PATH=$PATH:/home/$USER/.local/share/gem/ruby/3.0.0/bin
```

3. 安装 jekyll bundler 以及 jekyll 插件。

```bash
gem install bundler jekyll jekyll-sitemap jekyll-feed jekyll-seo-tag
```

## 安装 Matlab

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

## 安装 Mozart Oz

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

## 配置 Samba 文件共享

```bash
sudo nano /etc/samba/smb.conf
```

配置samba：

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

## 为 ibus-libpinyin 增加希腊字母输入功能

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

## 护眼软件 redshift

安装redshift：

```bash
sudo pacman -S redshift
```

启动redshift（或加入 i3wm 的配置文件：

```bash
redshift -O 5000
```
其中后面数字控制色温，数值越大屏幕越黄。

移除redshift：

```bash
redshift -x
```

## 在 Emacs 中使用 iBus 输入法

在~/.xprofile 中添加如下内容：

```bash
export LC_CTYPE=zh_CN.UTF-8
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
ibus-daemon -d -x
```

## 安装显卡驱动（可选）

```bash
sudo pacman -S virtualgl lib32-virtualgl lib32-primus primus
sudo mhwd -f -i pci video-hybrid-intel-nvidia-bumblebee
sudo systemctl enable bumblebeed
sudo gpasswd -a $USER bumblebee
reboot
```

## 安装 Cheat 命令提示工具

```
sudo pacman -S python3 python-pip

sudo pip install cheat

## 验证安装

cheat -v
```
