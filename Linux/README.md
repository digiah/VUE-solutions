# File association for vue files
The install is a pain, but it works,  When done, you can double click a vue file and it will open in vue.  do this:

```
# ln -s .~/bin/vue/VUE.sh ~/bin/vue/vue
# mkdir -p ~/bin/vue
# cp -r ./home/USERNAME/bin/vue ~/bin/vue
# sudo cp ./usr/bin/vue /usr/bin 
```
follow the directions in "./etc/profile.d/README and add to jre.sh" and in "./home/USERNAME/addme2bashrc"

...

This could be built via a bash script (see "eventual build script.sh") but i don't know enough of bash to do this.
