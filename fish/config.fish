if status is-interactive # Commands to run in interactive sessions can go here
end

# purposeful
alias todo="nvim ~/documents/todo" # do something that allows for more diachronic journalling

# general aliases
alias v=nvim
alias c=clear
alias l="ls -lh --color=auto --group-directories-first"
alias ls="ls -h --color=auto --group-directories-first"
alias la="ls -lah --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias mv="mv -i"
alias rm="rm -Iv"
alias df="df -h"
alias du="du -h -d 1"
alias k="killall"

# fun
alias "hello"="echo hello :3"

function fish_greeting
    echo "Thought of the session:"
    random choice "What to do..." "Uhm (adjusts glasses)... acktually" Hewwo "Does barrel rolls!" "what the sigma" "Fishmas, just a week away!" "(Welcomes you to fish)" "Welcome to fish. You have been living here for as long as you can remember." "Something's fishy..." "vvv the average nonchalant fish user vvv" "I hath NOT time to spare on such Frivolitese! I must Conquere this Islande and defeast Thou!" "El. Psy. Congroo" "It's Rintarover (2025)" OSHMKUFA2010 "The FLDSMDFR!" "sunny omori" "Are we doing it?! Now?! Right here?!" "get organized" "reminder to fix your config" "it is currently one in the morning. i NEED to go to sleep" "Funny how we get attached to the struggle." "I gently open the door" "Ho ho ho! Merry Christmas!" "I AM NOT! A MORON!" "And miles to go before I sleep" "You have died of dysentery." "All your base are belong to us." "YOU'RE WINNER !" "madeline celeste"
    echo ""
end
