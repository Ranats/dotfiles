#!/bin/sh

while getopts S: OPT
do
  case $OPT in
    S) FLG_S="TRUE" ;;
    *) echo "Usage: ./install.sh [-S]" 1>&2
       exit 1 ;;
  esac
done


# TD: fix

if ["$FLG_S" = "TRUE"]; then
  if [[ `uname -r` =~ ARCH$ ]]; then
    yaourt -S moc --noconfirm
    yaourt -S vim --noconfirm
    yaourt -S zsh --noconfirm
    yaourt -S freerdp --noconfirm
    yaourt -S xmonad xmonad-contrib --noconfirm
    yaourt -S imagemagick --noconfirm
    yaourt -S rxvt-unicode --noconfirm
    yaourt -S ranger --noconfirm
  # dmenu: dynamic menu
    yaourt -S dmenu --noconfirm
  else
    echo "You are not Arched!!!"    
  fi
fi

# Music On Console: music player on console
  rm -rf ~/.moc/
  ln -sf ~/dotfiles/.moc/config ~/.moc/config
  ln -sf ~/dotfiles/.moc/keymap ~/.moc/keymap

# Vim
  rm ~/.vimrc
  ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Zsh
  rm ~/.zshprofile
  ln -sf ~/dotfiles/.zprofile ~/.zprofile
  
# xfreeRDP : remote desktop to Windows
  ln -sf ~/dotfiles/bin/mstsc ~/bin/mstsc

# Xmonad
  rm -rf ~/.xmonad/
  ln -sf ~/dotfiles/.xmonad/xmobarrc ~/.xmonad/xmobarrc
  ln -sf ~/dotfiles/.xmonad/xmonad.hi ~/.xmonad/xmonad.hi
  ln -sf ~/dotfiles/.xmonad/xmonad.hs ~/.xmonad/xmonad.hs
  ln -sf ~/dotfiles/.xmonad/xmonad.o ~/.xmonad/xmonad.o
  ln -sf ~/dotfiles/.xmonad/xmonad-x86_64-linux ~/.xmonad/xmonad-x86_64-linux
  ln -sf ~/dotfiles/.xinitrc ~/.xinitrc

# Screenshot: use ImageMagic
  ln -sf ~/dotfiles/bin/screenshot.sh ~/bin/screenshot.sh
  ln -sf ~/dotfiles/bin/screenshot_select.sh ~/bin/screenshot_select.sh

# urxvt: Awesome terminal
  ln -sf ~/dotfiles/bin/run_urxvt ~/bin/run_urxvt
  ln -sf ~/dotfiles/.Xresources ~/.Xresources
  xrdb -merge ~/.Xresources
 
# ranger: filemanager on console
  ln -sf ~/dotfiles/bin/run_ranger ~/bin/run_ranger
  ranger --copy-config=all
  rm ~/.config/ranger/rc.conf
  rm ~/.config/ranger/rifle.conf
  rm ~/.config/ranger/scope.sh
  ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf
  ln -sf ~/dotfiles/.config/ranger/rifle.conf ~/.config/ranger/rifle.conf
  ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.cofig/ranger/scope.sh
