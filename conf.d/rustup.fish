if type -q rustup
    set PATH $HOME/.cargo/bin $PATH
    source (rustup completions fish | psub)
end
