# Defined in - @ line 1
function gitl --wraps='git log --oneline --color --graph' --description 'alias gitl git log --oneline --color --graph'
  git log --oneline --color --graph $argv;
end
