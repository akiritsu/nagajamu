---

title: "Setup A Productive Working Environment in Manjaro"
---



```bash
##--------------------------------------------------------
## 1. Bash Settings
##--------------------------------------------------------

nano ~/.bashrc

# In .bash_profile
# [Appended] History configurations
# Ingore repeated commands
export HISTCONTROL=ignoredups
# Ingore command in the string devided by colon
export HISTIGNORE="ls:cd:exit"
export HISTFILESIZE=10000000
export HISTSIZE=100000
# Make commands appended
shopt -s histappend
# Append commands real time
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

##--------------------------------------------------------
## 2. Setup Mirrors 
##--------------------------------------------------------

sudo pacman-mirrors -i -c China -m rank
sudo vi /etc/pacman.conf
## In pacman.conf
[archlinuxcn]
SigLevel = Never
Server=https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch

##--------------------------------------------------------
## 3. Update package signing keys
##--------------------------------------------------------

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring manjaro-keyring
sudo pacman-key --populate archinlinuxcn manjaro
sudo pacman-key --refresh-keys
sudo pacman -Syyu 

##--------------------------------------------------------
## 4. Install graphic card drivers  and bumblebee (optional)
##--------------------------------------------------------

sudo pacman -S virtualgl lib32-virtualgl lib32-primus primus
sudo mhwd -f -i pci video-hybrid-intel-nvidia-bumblebee
sudo systemctl enable bumblebeed
sudo gpasswd -a $USER bumblebee
reboot

##--------------------------------------------------------
## 5. Install development tools
##--------------------------------------------------------

sudo pacman -S \
pacaur \ # AUR helper
google-chrome \ # Web browser
cloc \ # Code statistics
nmon \ # Cli performance monitor
tldr \ # Quick examples for linux tools
i3-wm \ # Tiled multi-workspace windows manager
ibus ibus-libpinyin \ # Chinese input method
emacs \ # Text editor
lyx \ # LaTeX editor
texmacs \ # LaTeX editor
coq \ # Thereom proof assistance
sbcl \ # Common Lisp compiler
ghc \ # Haskell support
stack \ # Haskell syntax checker
idris \ # IDRIS support
agda \ # Agda support
arander \ # Visual front end for XRandR
yaourt \ # Frontend to pacman with AUR/ABS support
shadowsock-qt5 \ # Socks5 proxy
proxychains \ #  Use socks5 server with CLI tools, conf file: /etc/proxychains.conf
\
 
##--------------------------------------------------------
## 6. Configure i3wm and install themes
##--------------------------------------------------------

cd ~/.config/ && mkdir i3 && cd i3
git clone git clone https://github.com/unix121/i3wm-themer && cd i3wm-themer
sudo pip install -r requirements.txt
# For Arch, ArchLabs or Manjaro Linux
# (Should work for other Arch-based distros as well)
./install_requirements_arch.sh
# or: $ ./install_arch.sh
# For Debian: $ ./install_debian.sh

# For Ubuntu: $ ./install_ubuntu.sh
cp -r scripts/* /home/$USER/.config/polybar/
cd src/
python i3wm-themer.py --config config.yaml --install defaults/
python i3wm-themer.py --config config.yaml --load themes/002.json # alternatives can be 000.json - 012.json

# Customize i3-wm
vi /home/$USER/.config/i3/config

# In config:
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


##--------------------------------------------------------
## 7. Multi-monitors and Resolution
##--------------------------------------------------------

xrandr_usage="""xrandr --output <output>
        --auto
        --mode <mode>
        --preferred
        --pos <x>x<y>
        --rate <rate> or --refresh <rate>
        --reflect normal,x,y,xy
        --rotate normal,inverted,left,right
        --left-of <output>
        --right-of <output>
        --above <output>
        --below <output>
        --same-as <output>
        --set <property> <value>
        --scale <x>x<y>
        --scale-from <w>x<h>
        --transform <a>,<b>,<c>,<d>,<e>,<f>,<g>,<h>,<i>
        --off
        --crtc <crtc>
        --panning <w>x<h>[+<x>+<y>[/<track:w>x<h>+<x>+<y>[/<border:l>/<t>/<r>/<b>]]]
        --gamma <r>:<g>:<b>
        --brightness <value>
        --primary
"""
# Laptop1:
xrandr --output eDP-1 --below HDMI-1 && i3 restart
# Desktop1:
xrandr --output HDMI-3 --primary --left-of VGA-1 && i3 restart


##--------------------------------------------------------
## 8. Visual Studio Code
##--------------------------------------------------------

sudo pacman -S code

## Synchronize settings with Sync extesion and gist.github.com
## run Extensions: Install Extension
## Install Setting Sync
## Press: Shift + Alt + D
## Input gist token and id

vscode-exts="""
Dark+ Masterial
Dash
Emacs Friendly Keymap
Git History
GitLens
LaTeX Compile
LaTeX Language support
LaTeX Preview
LaTeX Workshop
Markdown All in one
Markdown PDF
Markdown TOC
md2pdf
Material Icon Theme
Prettier
Python
Settings Sync
Todo Tree
Todo Highlight
shell-format
vscode-pdf
vscode-scheme
"""



##--------------------------------------------------------
## 9. Bundler, jekyll and gems
##--------------------------------------------------------

sudo pacman -S ruby ruby-rails jekyll
gem install jekyll bundler jekyll-sitemap jekyll-mermaid

##--------------------------------------------------------
## 10. Crack Matlab
##--------------------------------------------------------

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

##--------------------------------------------------------
## 11. Mozart Oz
##--------------------------------------------------------
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
```elisp
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
```bash
##--------------------------------------------------------
## 12.Samba
##--------------------------------------------------------
sudo nano /usr/local/samba/lib/smb.conf

##--------------------------------------------------------
## 13. Disable or Unable Input Devices
##--------------------------------------------------------

sudo pacman -S xorg-xinput
# Browse input devices
xinput list
# Disable or enable devices
xinput set-int-prop <dev-str> "Device Enalbed" 

##--------------------------------------------------------
## 14. Configure Emacs
##--------------------------------------------------------

git clone https://github.com/purcell/emacs.d ~/.emacs.d && emacs
# An alternative can be: https://github.com/akiritsu/emacs-config

##--------------------------------------------------------
## 15. Coq, Agda and Proof General
##--------------------------------------------------------
TODO:

##--------------------------------------------------------
## 16. Install mathpix-snipping-tool, LaTeX converter
##--------------------------------------------------------

# mathpix doesn't work with i3-wm
# AUR page: https://aur.archlinux.org/packages/mathpix-snipping-tool 
yaourt -S mathpix-snipping-tool
```
