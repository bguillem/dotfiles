# Defined in - @ line 1
function gitp --wraps='git push' --description 'alias gitp git push'
  git push $argv;
end
