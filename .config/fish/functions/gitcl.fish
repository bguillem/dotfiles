# Defined in - @ line 1
function gitcl --wraps='git clone' --description 'alias gitcl git clone'
  git clone $argv;
end
