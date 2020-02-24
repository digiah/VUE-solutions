# Do not change this unless you want to completely by-pass Arch Linux' way
# of handling Java versions and vendors. Instead, please use script `archlinux-java`
export PATH=${PATH}:/usr/lib/jvm/default/bin

# https://wiki.archlinux.org/index.php/java#Better_font_rendering
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.systemlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel'
# added by rr 200223

# export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
# export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.motif.MotifLookAndFeel'
# export _JAVA_OPTIONS='-Dswing.defaultlaf=javax.swing.plaf.metal.MetalLookAndFeel'
# export _JAVA_OPTIONS='-Dswing.defaultlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel'


export GRAALVM_HOME=/usr/lib/jvm/java-8-graalvm
export PATH=$PATH:/usr/lib/jvm/java-8-graalvm/bin
