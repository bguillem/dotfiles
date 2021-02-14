# Defined in - @ line 1
function gita --wraps='git add' --description 'alias gita git add'
  git add $argv;
end
