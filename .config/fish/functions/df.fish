# Defined in - @ line 1
function df --wraps='df -ahiT --total' --description 'alias df df -ahiT --total'
 command df -ahiT --total $argv;
end
