alias -s cls "clear"
alias -s ll "ls -lisa --color=auto"
alias -s ls "ls -CF --color=auto"
alias -s df "df -ahiT --total"
alias -s wget "wget -c"
alias -s ps "ps auxf"
alias -s grep "grep --color=auto"
alias -s bc "bc -q"
alias -s gits "git status"
alias -s gita "git add"
alias -s gitcl "git clone"
alias -s gitch "git checkout"
alias -s gitsh "git shortlog"
alias -s gitl "git log --oneline --color --graph"
alias -s gitp "git push"
alias -s gitb "git branch"
alias -s gitf "git fetch"
alias -s fhere "find . -name"
alias -s myip "curl http://ipecho.net/plain; echo"
alias -s restartnet "sudo systemctl restart NetworkManager"
alias -s dockerTek "docker run --rm it -v $PWD:/home/ -w /home epitechcontent/epitest /bin/bash"
alias -s sdn "shutdown -h now"
alias -s upd "sudo pacman -Syu --noconfirm && yay -Syu --noconfirm"
alias -s clean_repo "rm *gc* unit_tests 2>/dev/null; make clean"
alias -s vim "nvim"
alias -s mktr "clean_repo; make tests_clean_run"
alias -s vg "valgrind -v --leak-check=full --show-leak-kinds=all --log-file=valgrind.txt"

function ld_preload
    set LD_PRELOAD ./libmy_malloc.so
end

function su
   command su --shell=/usr/bin/fish $argv
end

set -U fish_greeting

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end


