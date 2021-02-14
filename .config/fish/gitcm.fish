# Defined in - @ line 1
function gitcm --wraps='git commit -m' --description 'alias gitcm git commit -m'
  git commit -m $argv;
end
