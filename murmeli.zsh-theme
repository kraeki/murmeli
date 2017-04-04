# For my own and others sanity
# git:
# %b => current branch
# %a => current action (rebase/merge)
# prompt:
# %F => color dict
# %f => reset color
# %~ => current path
# %* => time
# %n => username
# %m => shortname host
# %(?..) => prompt conditional - %(condition.true.false)
# terminal codes:
# \e7   => save cursor position
# \e[2A => move cursor 2 lines up
# \e[1G => go to position 1 in terminal
# \e8   => restore cursor position
# \e[K  => clears everything after the cursor on the current line
# \e[2K => clear everything on the current line

# Git prompt
local git_color=242
ZSH_THEME_GIT_PROMPT_PREFIX="%F{$git_color}(%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{$git_color})%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%f"
local git_branch='%F{$git_color}$(git_prompt_info)%f'

# Return code
local return_code="%(?..%{$fg[red]%}%? ↵%f)"

# Current directory
local current_dir='%F{blue}%~%f'

# User and host
#local user_host='%F{white}%n%f%F{242}@%m%f'
local user_host='%F{242}%n@%m%f'

# Final Prompt
PROMPT="> ${current_dir}
${user_host}:${git_branch} %B$%b "
RPS1="${return_code}"
