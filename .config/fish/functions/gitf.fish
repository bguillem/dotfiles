# Defined in - @ line 1
function gitf --wraps='git fetch' --description 'alias gitf git fetch'
  git fetch $argv;
end
