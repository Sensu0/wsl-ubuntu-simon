#!/bin/zsh
# Script to set up SSH for your Github account.

email=$1

sshkey=$2


echo "Please enter your email that's used with your Github account."
read email

echo "
Enabling and starting ssh services..."
sudo systemctl enable ssh.service
sudo systemctl start ssh.service

echo "
Generating ssh key with your email"
ssh-keygen -t ed25519 -C $email

echo "
Please input the filename of your ssh key again for this script to work properly.

If you didn't input anything before, just enter 'ed25519' below:"
read sshkey


echo "
Adding key to ssh-agent"
ssh-add ~/.ssh/id_$sshkey\ 

echo "
Copying key to clipboard using clip.exe..."
clip.exe < ~/.ssh/id_$sshkey\/.pub

echo "
Go to https://github.com/settings/keys

NOTE: If you accidentally copy the website path,
just run 'clip.exe < ~/.ssh/id_$sshkey\/.pub'

And paste in your key.

After all that is done, run 'ssh -T git@github.com' and you'll be done!

NOTE: SSH autentication only works on repos that have been cloned to your machine using SSH.
"
