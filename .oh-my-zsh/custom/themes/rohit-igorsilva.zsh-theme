LCHAR_WIDTH=%1G

# Choose you delimiter
#LCHAR='➤'
#LCHAR='➣'
#LCHAR='⇥'
#LCHAR='➤'
#LCHAR='»'
#LCHAR='#'
#LCHAR='➜'
#LCHAR='$'
#LCHAR='▶'
#LCHAR='ᐅ'
#LCHAR='▸'
#LCHAR='~'
#LCHAR='>'
LCHAR='λ'
#LCHAR='⇒'
#LCHAR='✭'
#LCHAR='✹'
#LCHAR='✖'
#LCHAR='✚'
#LCHAR='═'
#LCHAR='✔'
#LCHAR='✘'
#LCHAR='❯'
#LCHAR='|'
#LCHAR='♥︎'
#LCHAR='❤︎'
#LCHAR='❥'
#LCHAR=''
#LCHAR='%%'
#LCHAR='%#' # It'll be # for root and % for non-root users
#LCHAR='::'

# OS X Only
#LCHAR='👉🏻 ' LCHAR_WIDTH=%2G
#LCHAR='👉🏿 ' LCHAR_WIDTH=%2G
#LCHAR='❕ '
#LCHAR='☕️ '
#LCHAR='🖥 '
#LCHAR='🇧🇷 ' LCHAR_WIDTH=%2G
#LCHAR='🇺🇸 ' LCHAR_WIDTH=%2G

if [[ $UID == 0 || $EUID == 0 ]]; then
   C_COLOR="red"
else
   C_COLOR="green"
fi

PROMPT='%{$fg[cyan]%}%c %{$fg_bold[$C_COLOR]%}%{$LCHAR$LCHAR_WIDTH%} %{$reset_color%}'
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✖"
