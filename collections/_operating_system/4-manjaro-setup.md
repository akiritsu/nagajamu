---
title: Manjaro系统安装及软件设置
---

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

## 设置镜像

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

## 安装显卡驱动（可选）

```bash
sudo pacman -S virtualgl lib32-virtualgl lib32-primus primus
sudo mhwd -f -i pci video-hybrid-intel-nvidia-bumblebee
sudo systemctl enable bumblebeed
sudo gpasswd -a $USER bumblebee
reboot
```

## 安装常用软件

```bash
sudo pacman -S pacaur google-chrome cloc nmon tldr  emacs lyx texmacs coq sbcl ghc stack idris agda arander yaourt
```

## 配置中文输入法

1. 安装 ibus ibus-pinyin。

```bash
sudo pacman -S ibus ibus-libpinyin
```

2. 将 ibus-daemon 加入开机启动，并设置。

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
# [Modified] motion "jkl;" to "ijkl"
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+i focus up
bindsym $mod+l focus right
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+i move up
bindsym $mod+Shift+l move right
# [Modified] Resize window (you can also use the mouse for that)
bindsym $mod+r mode "resize"
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 5 px or 5 ppt
        bindsym k resize grow height 5 px or 5 ppt
        bindsym i resize shrink height 5 px or 5 ppt
        bindsym l resize grow width 5 px or 5 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # exit resize mode: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}
# [Disabled]
## for_window [class="(?i)virtualbox"] floating enable border normal
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

## 配置Git
1. 配置git代理。
2. 记忆账号密码。

## 安装 bundler 和 jekyll

1. 安装 Ruby。
```bash
sudo pacman -S ruby ruby-rails jekyll
gem install jekyll bundler jekyll-sitemap jekyll-mermaid
```

## 安装 matlab

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
sudo nano /usr/local/samba/lib/smb.conf
```
