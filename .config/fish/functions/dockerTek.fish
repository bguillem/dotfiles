# Defined in - @ line 1
function dockerTek --wraps='docker run --rm it -v /home/bogdan:/home/ -w /home epitechcontent/epitest /bin/bash' --description 'alias dockerTek docker run --rm it -v /home/bogdan:/home/ -w /home epitechcontent/epitest /bin/bash'
  docker run --rm it -v /home/bogdan:/home/ -w /home epitechcontent/epitest /bin/bash $argv;
end
