# Defined in - @ line 1
function vg --wraps='valgrind -v --leak-check=full --show-leak-kinds=all --log-file=valgrind.txt' --description 'alias vg valgrind -v --leak-check=full --show-leak-kinds=all --log-file=valgrind.txt'
  valgrind -v --leak-check=full --show-leak-kinds=all --log-file=valgrind.txt $argv;
end
