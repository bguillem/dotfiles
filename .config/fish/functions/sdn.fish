# Defined in - @ line 1
function sdn --wraps='shutdown -h now' --description 'alias sdn shutdown -h now'
  shutdown -h now $argv;
end
