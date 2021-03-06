#java font fix to remove chroma and aliasing, change look and feel so that vue interface works.
#Cut and paste everything below (but not including the hash line below into your ~/.bashrc file.  If you already have java options specified this needs to either replace or be appended to them.  see java documentation for look and feel if unsure from format how to edit this line if you need to. 
# this variable also needs to go into "~/.bashrc". 
# After changing both files, reboot or type "man source" in a terminal and restart the bash and sh environments from the directions their. 
# It should go "source ~/.bashrc" and "source /etc/profile.d/jre.sh" from a terminal.   
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.systemlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel'
#all options
# yoff, false, default	No anti-aliasing
# on	Full anti-aliasing
# gasp	Use the font's built-in hinting instructions
# lcd, lcd_hrgb	Anti-aliasing tuned for many popular LCD monitors
# lcd_hbgr, lcd_vrgb, lcd_vbgr	Alternative LCD monitor setting

#To change look and feel, replace the appropriate section to the top java options setting.  Not all options will work well with vue though:
#as per VUE github issue 
# https://github.com/VUE/VUE/issues/24#issuecomment-215671876
# -Dswing.systemlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
# -Dswing.systemlaf=com.sun.java.swing.plaf.motif.MotifLookAndFeel
# -Dswing.systemlaf=javax.swing.plaf.metal.MetalLookAndFeel
# -Dswing.systemlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel



