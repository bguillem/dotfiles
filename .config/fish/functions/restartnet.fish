# Defined in - @ line 1
function restartnet --wraps='sudo systemctl restart NetworkManager' --description 'alias restartnet sudo systemctl restart NetworkManager'
  sudo systemctl restart NetworkManager $argv;
end
