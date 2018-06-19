#!/bin/sh
if [[ `uname -r` =~ ARCH$ ]]; then
# Music On Console: music player on console
  rm -rf ~/.moc/
  yaourt -S moc --noconfirm
  ln -sf ~/dotfiles/.moc/config ~/.moc/config
  ln -sf ~/dotfiles/.moc/keymap ~/.moc/keymap

# Vim
  yaourt -S vim --noconfirm
  rm ~/.vimrc
  ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Zsh
  yaourt -S zsh --noconfirm
  rm ~/.zshprofile
  ln -sf ~/dotfiles/.zprofile ~/.zprofile
  
# xfreeRDP : remote desktop to Windows
  yaourt -S freerdp --noconfirm
  ln -sf ~/dotfiles/bin/mstsc ~/bin/mstsc

# Xmonad
  rm -rf ~/.xmonad/
  yaourt -S xmonad xmonad-contrib --noconfirm
  ln -sf ~/dotfiles/.xmonad/xmobarrc ~/.xmonad/xmobarrc
  ln -sf ~/dotfiles/.xmonad/xmonad.hi ~/.xmonad/xmonad.hi
  ln -sf ~/dotfiles/.xmonad/xmonad.hs ~/.xmonad/xmonad.hs
  ln -sf ~/dotfiles/.xmonad/xmonad.o ~/.xmonad/xmonad.o
  ln -sf ~/dotfiles/.xmonad/xmonad-x86_64-linux ~/.xmonad/xmonad-x86_64-linux
  ln -sf ~/dotfiles/.xinitrc ~/.xinitrc

# Screenshot: use ImageMagic
  yaourt -S imagemagick --noconfirm
  ln -sf ~/dotfiles/bin/screenshot.sh ~/bin/screenshot.sh
  ln -sf ~/dotfiles/bin/screenshot_select.sh ~/bin/screenshot_select.sh

# urxvt: Awesome terminal
  yaourt -S rxvt-unicode --noconfirm
  ln -sf ~/dotfiles/bin/run_urxvt ~/bin/run_urxvt
  ln -sf ~/dotfiles/.Xresources ~/.Xresources
  xrdb -merge ~/.Xresources

else
  echo "You are not Arched!!!"
fi
