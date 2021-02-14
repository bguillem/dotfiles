# Defined in - @ line 1
function ps --wraps='ps auxf' --description 'alias ps ps auxf'
 command ps auxf $argv;
end
