#!/bin/bash
clear
echo "MAKING Fedora INSTALLATION USB MEDIA from Mac OS X (test on El Capitan)"
echo ""
# echo "https://getfedora.org/"
# echo "Information on Intel NUC"
# Open -a "Google Chrome" https://github.com/mccshark
# Open -a "Google Chrome" https://getfedora.org/
# Open -a "Google Chrome" http://www.intel.com/content/www/us/en/support/boards-and-kits/intel-nuc-boards/000005628.html
# Open -a "Google Chrome" http://www.intel.com/content/www/us/en/nuc/nuc-kit-nuc6i5syh-nuc6i5syk-brief.html
# Open -a "Google Chrome"https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB

# Download a Fedora image, choose a USB stick that does not contain any data you need, and connect it
# Open a terminal
# Run diskutil list. This will list all disks connected to the system, as /dev/rdisk1, /dev/rdisk2 and so on. Identify - very carefully! - which one corresponds to the USB stick you wish to use. Hereafter, we'll assume it was /dev/rdisk2 - modify the commands as appropriate for your stick.
# Run diskutil unmountDisk /dev/rdisk2
# Type dd if=, then drag and drop the Fedora image file to the terminal window - this should result in its filesystem location being appended to the command. Now complete the command with of=/dev/rdisk2 bs=1m, but don't hit Enter yet. You should wind up with something like sudo dd if=/Volumes/Images/Fedora-Live-Desktop-x86_64-20-1.iso of=/dev/rdisk2 bs=1m
# Double-check you have the correct disk number and you're really, really sure you don't need any of the data on the USB stick!
# Hit Enter
# Wait for the operation to complete, then reboot your computer, and hold down the left Alt/Option key to access the boot menu - you should see a Fedora logo. Click this to boot.

diskutil list
echo "if dev/disk2 run next command"

read -p "Do you want to unmount dev/disk2 (Yy)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # diskutil unmountDisk /dev/disknumber
  echo ""
  diskutil unmountDisk /dev/disk2
else
  echo ""
  echo "You selcted no."
  echo ""
fi

read -p "Caution! Do you want to erase disk2 and add the fedora image to dev/disk2 (Yy)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo ""
  # sudo dd if=/Volumes/LaCie/NODROPBOX/AppsLinux/Fedora-Server-dvd-x86_64-24-1.2.iso of=/dev/disk2
  time sudo dd if=/Volumes/LaCie/NODROPBOX/AppsLinux/Fedora-Server-dvd-x86_64-24-1.2.iso of=/dev/disk2 bs=1m
else
  echo ""
  echo "You selcted no."
  echo ""
fi
