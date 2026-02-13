# install starship terminal prompt manager
curl -sS https://starship.rs/install.sh | sh

# activate starship
echo 'eval "$(starship init bash)"' >> ~/.bashrc
source ~/.bashrc

# use pure-prompt preset
starship preset pure-preset -o ~/.config/starship.toml

# set default editor
export EDITOR=vim

echo "Consider using ghostty as a terminal emulator."
