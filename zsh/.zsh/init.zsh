# Load order (probably) matters!
files=(env plugins alias history completion)

for file ($files) source "$HOME/.zsh/$file.zsh"

unset files