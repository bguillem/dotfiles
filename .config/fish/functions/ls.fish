# Defined in - @ line 1
function ls --wraps='ls -CF --color=auto' --description 'alias ls ls -CF --color=auto'
 command ls -CF --color=auto $argv;
end
