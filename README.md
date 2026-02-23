# configs

Some configs I'd rather not lose:
- [fish.config](./fish.config): fish shell configuration for a reasonably working shell. This is meant to be used with [ghostty](https://ghostty.org/) terminal. 
- [gitconfig](./gitconfig): quality of life enhancements for git
- [jjconfig](./jjconfig.toml): configs akin to those applied in git when (rarely) applicable, mainly aligns tools for merge and diffs

These configs depend on the following packages:
- [VSCodium](https://vscodium.com/): open source VSCode build, used as a merge editor by git and jj
- [difftastic](https://difftastic.wilfred.me.uk/): structured diffs for git and jj
- [mergiraf](https://mergiraf.org/introduction.html): language-aware conflict simplification
- [neovim](https://neovim.io/): a better VIM to be used as an alias for the worse VIM in shell config
- [starship](https://starship.rs/): cross-shell prompt management utility to get VCS info for both git and JJ
