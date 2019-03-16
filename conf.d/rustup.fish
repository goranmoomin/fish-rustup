if type -q $HOME/.cargo/bin/rustup
    set PATH $HOME/.cargo/bin $PATH
    source (rustup completions fish | psub)
end

set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
    if set -l index (contains -i $HOME/.cargo/bin $PATH)
        set -e PATH[$index]
    end
end
