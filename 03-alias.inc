[alias]
    glog = log --graph
    cglog = log --graph --pretty=format:'%C(auto,yellow)%h%C(auto,magenta)% G? %C(auto,cyan)%>(13,trunc)%ad %C(auto,green)%<(14,trunc)%aN %C(auto,reset)%s%C(auto)% gD% d' --date=relative
    get = !~/.gitconfig.d/scripts/clone_with_template.sh
