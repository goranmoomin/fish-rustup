if type -q $HOME/.cargo/bin/rustup
    set PATH $HOME/.cargo/bin $PATH
    source (rustup completions fish | psub)
end
