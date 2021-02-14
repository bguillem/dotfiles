# Defined in - @ line 1
function gitch --wraps='git checkout' --description 'alias gitch git checkout'
  git checkout $argv;
end
