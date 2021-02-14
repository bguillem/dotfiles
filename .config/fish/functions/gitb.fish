# Defined in - @ line 1
function gitb --wraps='git branch' --description 'alias gitb git branch'
  git branch $argv;
end
