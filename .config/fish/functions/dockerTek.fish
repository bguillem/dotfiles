# Defined in - @ line 1
function dockerTek --wraps='docker run --rm it -v /home/bogdan:/home/ -w /home epitechcontent/epitest /bin/zsh' --description 'alias dockerTek docker run --rm it -v /home/bogdan:/home/ -w /home epitechcontent/epitest /bin/zsh'
  docker run --rm it -v /home/bogdan:/home/ -w /home epitechcontent/epitest /bin/zsh $argv;
end
