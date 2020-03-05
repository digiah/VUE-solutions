# File association for vue files in Linux
VUe in Linux is provided as a simple java jar file that has to be executed with `java -jar vue.jar`. THis Linux portion of the directory creates and executable file that you put in `/usr/bin` and can then launch like any other program.  It also supplies the java tweaks that make VUE usable on linux and a desktop launcer file so that your launcher can find it too.  All this makes vue into a "regular" app instead of a cludge.  The install is a pain, but it works:  When done, you can double click a vue file and it will open in vue.  do this from the directory this file is in (git/VUE-solutions/Linux):

## Commands
```
$ mkdir -p ~/bin/vue
$ cd ~/git/VUE-solutions/Linux/        # change to suit where you cloned
$ cp -r ./home/USERNAME/bin/vue ~/bin
$ mkdir -p ~/.local/share/icons
$ cp ./home/USERNAME/.local/share/icons/vue.svg ~/.local/share/icons/vue.svg
$ mkdir -p ~/.local/share/applications
$ cp ./home/USERNAME/.local/share/applications/VUE.desktop ~/.local/share/applications/VUE.desktop
$ cd ~/bin/vue
$ chmod 755 VUE.sh
$ sudo cp vue /usr/bin/vue
$ cd ~/git/VUE-solutions/Linux//etc/profile.d/     # adjust path to git location if needed
```
## Java environment tweaks
Follow the directions in git folder under `Linux/etc/profile.d/README` and add to jre.sh, then repeat for `./home/USERNAME/addme2bashrc,` adding to `.bashrc` You may not actually need to change .bashrc if you won't start vue from the command line. Once these two files are adjusted, reboot (it may just need relogin. I tried `$ source /etc/profile.d/jre.sh` but that did not get the settings to take so I just rebooted.  

#Launcher
From whatever desktop manager you use (i.e., Gnome, Cinnamon, LXDE, etc), try launching vue from that. It should accessible to the launcher for your DM. Check that VUE launched and that window decorations are there, the map is not split in two, and the fonts are not aliasing or have chroma rings.  This is what the java environment variable set in atc/profile.d. 

## File association
If all checks out, open your desktop's file manager (i.e., nautilus, thunar, nemo, etc) and browse to your git repository in the following subfolder: `...git//VUE-solutions/Linux/home/USERNAME/TestMaps`. Here are the instructions for nemo: Right-Click on `tmp.vpk` and choose "open with" from the context menu. Choose "other application" and type `/usr/bin/vue` in the "custom executable" field. Choose "set as default" for the action.  VUE should launch, opening tmp.vpk.  `.vpk` files are vue archives and can contain multiple linked vue maps.  Repeat the same process for one of the two `.vue` files. No need to do it for both! Test that you can launch both types of files by double clicking on the files.  If so, congrats, that is it! you no longer have to deal with the clunky java file manager in vue as much.

====

This could be built via a bash script (see `eventual build script.sh`) but i don't know enough of bash to do this.
