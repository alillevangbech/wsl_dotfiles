# zsh profile file. Runs on login. Environmental variables are set here.
# to clean up


# Adds '~/.local/bin' to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

# default programs
export EDITOR="nvim"
export READER="/mnt/c/Users/ALBEC/AppData/Local/SumatraPDF/SumatraPDF.exe"

# rust
export RUSTUP_HOME="~/.config/rust/.rustup"
export CARGO_HOME="~/.config/rust/.cargo"

