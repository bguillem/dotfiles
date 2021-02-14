# Defined in - @ line 1
function gits --wraps='git status' --description 'alias gits git status'
  git status $argv;
end
