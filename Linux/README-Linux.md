[There is a fork! with updates!](https://github.com/rpavlik/VUE)

# Launcher in Linux

VUE in Linux is provided as a simple java jar file that has to be executed with `java -jar vue.jar`. This Linux portion of the directory creates and executable file that you put in `/usr/bin` and can then launch like any other program.  It also supplies the java tweaks that make VUE usable on linux and a desktop launcher file so that your launcher can find it too.  All this makes vue into a "regular" app instead of a cludge.  The install is a pain, <del>but it works:  When done, you can double click a vue file and it will open in vue</del> (see below).  

To get the launcher working, do this from the directory this file is in (git/VUE-solutions/Linux):

## Commands
```
$ mkdir -p ~/bin/vue
$ cd ~/git/VUE-solutions/Linux/        # change to suit where you cloned
$ cp -r ./home/USERNAME/bin/vue ~/bin
$ sudo mkdir -p /usr/local/share/icons
$ sudo cp ./home/USERNAME/.local/share/icons/vue.svg /usr/local/share/icons
$ mkdir -p ~/.local/share/applications
$ cp ./home/USERNAME/.local/share/applications/VUE.desktop ~/.local/share/applications/VUE.desktop
$ cd ~/bin/vue
$ chmod 755 VUE.sh
$ chmod 755 VUEstartup.sh
$ sudo cp vue /usr/bin/vue
# not sure what the purpose of this is. it points to a script that simply gives a path on the AWS version
# $ sudo cp vuestartup /usr/bin/vue
$ cd ~/git/VUE-solutions/Linux//etc/profile.d/     # adjust path to git location if needed
$ update-desktop-database ~/.local/share/applications/
```
## Java environment tweaks
```
$ cd /etc/profile.d
$ sudo nano jre.sh  #edit launch env for java if it exists, creating it if not.
```
Add the folloing line (all one line) to the end jre.sh file. 
```
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.systemlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel'
```
Then add the same line to the end of your `~/.bashrc`. You may not actually need to change .bashrc if you won't start vue from the command line. Once these two files are adjusted, reboot (it may just need relogin. I tried `$ source /etc/profile.d/jre.sh` but that did not get the settings to take so I just rebooted.  


## Launcher

From whatever desktop manager you use (i.e., Gnome, Cinnamon, LXDE, etc), try launching vue from that. It should accessible to the launcher for your DM. Check that VUE launched and that window decorations are there, the map is not split in two, and the fonts are not aliasing or have chroma rings.  This is what the java environment variable set in etc/profile.d. 


## File association

**Note: This messes up other file associations. Working on a fix.**

<del>If all checks out, open your desktop's file manager (i.e., nautilus, thunar, nemo, etc) and browse to your git repository in the following subfolder: `...git//VUE-solutions/Linux/home/USERNAME/TestMaps`. Here are the instructions for nemo: Right-Click on `tmp.vpk` and choose "open with" from the context menu. Choose "other application" and type `/usr/bin/vue` in the "custom executable" field. Choose "set as default" for the action.  VUE should launch, opening tmp.vpk.  `.vpk` files are vue archives and can contain multiple linked vue maps.  Repeat the same process for one of the two `.vue` files. No need to do it for both! Test that you can launch both types of files by double clicking on the files.  If so, congrats, that is it! you no longer have to deal with the clunky java file manager in vue as much.</del>

### here is more on the problem:

* issue [#5] : vue hijacks html and zip extensions.


====

This whole thing could be built via a bash script (see `eventual build script.sh`) but i don't know enough of bash to do this.
