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
