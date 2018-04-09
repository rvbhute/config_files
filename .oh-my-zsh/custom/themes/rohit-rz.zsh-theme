# http://richard-zhao.com/blog/2015/08/26/zsh-prompt/
# https://github.com/zhaorz/.dotfiles/blob/master/oh-my-zsh-custom/themes/rz.zsh-theme

#
# Unicode table
#
# ± 00B1
# ✗ 2717
# λ 03BB
# ▶ 25B6

# Git setup
#

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%} ±%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# oh-my-zsh $(git_prompt_info) puts 'dirty' behind branch
git_custom_prompt() {
  # branch name (.oh-my-zsh/plugins/git/git.plugin.zsh)
  local branch=$(current_branch)
  if [ -n "$branch" ]; then
    # parse_git_dirty echoes PROMPT_DIRTY or PROMPT_CLEAN (.oh-my-zsh/lib/git.zsh)
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$branch$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

#
# Main prompt
#

local path_string="%{$fg[blue]%}%c"
local prompt_string="λ"

if [[ $UID == 0 || $EUID == 0 ]]; then
   prompt_string="▶"
fi

# Make prompt_string red if the previous command failed.
local return_status="%(?:%{$fg_bold[green]%}$prompt_string:%{$fg_bold[red]%}$prompt_string)"

PROMPT='${path_string} ${return_status} %{$reset_color%}'

#
# Right Prompt
#

local time="%{$fg[magenta]%}%*%{$reset_color%}"

RPROMPT='$(git_custom_prompt) ${time}'
