# File association for vue files
The install is a pain, but it works,  When done, you can double click a vue file and it will open in vue.  do this from the directory this file is in (git/VUE-solutions/Linux):

```
# 
# mkdir -p ~/bin/vue
# cp -r ./home/USERNAME/bin/vue ~/bin
# mkdir -p ~/.local/share/icons
# cp ./home/USERNAME/.local/share/icons/vue.svg ~/.local/share/icons/vue.svg
# mkdir -p ~/.local/share/applications
# cp ./home/USERNAME/.local/share/applications/VUE.desktop ~/.local/share/applications/VUE.desktop
# cd ~/bin/vue
# sudo cp vue /usr/bin/vue
change folder back to git VUE-solutioins/Linux/etc/profile.d
```
follow the directions in git folder under "Linux/etc/profile.d/README and add to jre.sh" and in "./home/USERNAME/addme2bashrc" You may not actually need to change .bashrc if you won't start vue from the command line. Once these two files are adjusted, reboot (it may just need relogin. I tried `# source /etc/profile.d/jre.sh" but that did not get the settings to take so I just rebooted.  



...

This could be built via a bash script (see "eventual build script.sh") but i don't know enough of bash to do this.
