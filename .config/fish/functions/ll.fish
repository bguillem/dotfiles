# Defined in - @ line 1
function ll --wraps='ls -lisa --color=auto' --description 'alias ll ls -lisa --color=auto'
  ls -lisa --color=auto $argv;
end
