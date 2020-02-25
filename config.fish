set -g theme_display_ruby no
set -g theme_display_virtualenv no
set -gx PATH ~/.gem/ruby/2.6.0/bin $PATH
cat ~/.cache/wal/sequences
if not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end
