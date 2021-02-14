# Defined in - @ line 1
function fhere --wraps='find . -name' --description 'alias fhere find . -name'
  find . -name $argv;
end
