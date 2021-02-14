# Defined in - @ line 1
function clean_repo --wraps='rm *gc* unit_tests 2>/dev/null; make clean' --description 'alias clean_repo rm *gc* unit_tests 2>/dev/null; make clean'
  rm *gc* unit_tests 2>/dev/null; make clean $argv;
end
