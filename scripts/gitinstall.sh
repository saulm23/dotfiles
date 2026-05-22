git config --global user.name $1
git config --global user.email $2
git config --global init.defaulBranch main
ssh-keygen -t ed25519
xclip -o -i ~/.ssh/id_ed25519.pub -sel clipboard
