# cleaner diffs when moving lines around
git config --global diff.algorithm histogram

# master as a default conflicts with most code forges
git config --global init.defaultBranch main

# auto setup remote if a remote branch with the same name exists
git config --global push.autoSetupRemote true

# moved lines get a different color inside diffs
git config --global diff.colorMoved default

# add origin when showing conflict
git config --global merge.conflictstyle zdiff3

# only pull if fast-forward is possible
git config --global pull.ff only

# sort branches by last commit date
git config --global branch.sort -committerdate

# set username and mail
git config --global user.name "Daniele Paletti"
git config --global user.email "mail@dpaletti.com"

# Options that need additional dependencies
# Set meld as a merge tool
git config --global merge.tool meld

# Set difftastic as a diff tool
git config --global diff.external difft

# Set delta as a pager
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global merge.conflictStyle zdiff3


# Setting diff and merge tools
# Packages to install for git config to work
PACKAGES="difftastic meld git-delta"

# Detect package manager
if command -v apt > /dev/null 2>&1; then
    PKG_MANAGER="apt"
elif command -v dnf > /dev/null 2>&1; then
    PKG_MANAGER="dnf"
elif command -v yum > /dev/null 2>&1; then
    PKG_MANAGER="yum"
elif command -v zypper > /dev/null 2>&1; then
    PKG_MANAGER="zypper"
elif command -v pacman > /dev/null 2>&1; then
    PKG_MANAGER="pacman"
else
    echo "Error: No known package manager found." >&2
    exit 1
fi

echo "Detected package manager: $PKG_MANAGER"
echo "The following packages will be installed: $PACKAGES"
read -rp "Proceed? [y/N] " confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 0
fi

case "$PKG_MANAGER" in
    apt)    sudo apt update && sudo apt install -y $PACKAGES ;;
    dnf)    sudo dnf install -y difftastic $PACKAGES ;;
    yum)    sudo yum install -y difftastic $PACKAGES ;;
    zypper) sudo zypper install -y difftastic $PACKAGES ;;
    pacman) sudo pacman -Sy --noconfirm difftastic $PACKAGES ;;
esac

