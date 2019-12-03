# brew
set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar"
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew"
set -g fish_user_paths "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $fish_user_paths
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH

# tensorflow
set -x TF_CPP_MIN_LOG_LEVEL 2

#lua
set -x LUA_PATH '?.lua;/usr/local/share/luajit-2.0.5/?.lua'
set -x LUA_CPATH '/usr/local/share/luajit-2.0.5/?.so'

# bobthefish
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g theme_title_use_abbreviated_path no
set -g theme_newline_prompt '$ '
set -g theme_title_display_process yes
# set -g theme_display_date no
set -g theme_date_format "+%H:%M"

# golang
set -g fish_user_paths "/usr/local/go/bin" $HOME"/go/bin" $fish_user_paths

set -x EDITOR code --wait

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval $HOME/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
