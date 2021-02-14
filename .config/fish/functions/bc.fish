# Defined in - @ line 1
function bc --wraps='bc -q' --description 'alias bc bc -q'
 command bc -q $argv;
end
