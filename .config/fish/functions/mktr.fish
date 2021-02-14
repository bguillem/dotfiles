# Defined in - @ line 1
function mktr --wraps='clean_repo ; make tests_clean_run' --description 'alias mktr clean_repo; make tests_clean_run'
  clean_repo ; make tests_clean_run $argv;
end
