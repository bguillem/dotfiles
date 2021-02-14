# Defined in - @ line 1
function gitsh --wraps='git shortlog' --description 'alias gitsh git shortlog'
  git shortlog $argv;
end
