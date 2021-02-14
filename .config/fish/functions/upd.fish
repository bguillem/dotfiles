# Defined in - @ line 1
function upd --wraps='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm' --description 'alias upd sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'
  sudo pacman -Syu --noconfirm && yay -Syu --noconfirm $argv;
end
