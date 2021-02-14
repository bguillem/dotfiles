# Defined in - @ line 1
function wget --wraps='wget -c' --description 'alias wget wget -c'
 command wget -c $argv;
end
