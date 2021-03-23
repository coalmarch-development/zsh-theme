if [[ $UID -eq 0 ]]; then
    local user_host="%{$fg_bold[red]%}%n %{$reset_color%}"
    local user_symbol='#'
else
    local user_host="%{$fg_bold[green]%}%n %{$reset_color%}"
    local user_symbol='$'
fi

local ret_status="%(?:%{$fg_bold[green]%} ➜ :%{$fg_bold[red]%} ➜ )"
PROMPT='${ret_status} ${user_host}%{$reset_color%}[%{$fg_bold[cyan]%}%~%{$reset_color%}] $(git_prompt_info)${user_symbol} '
#RPROMPT='$(battery_pct_prompt)'

TIMER_FORMAT='[%d]'
TIMER_PRECISION=1

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

