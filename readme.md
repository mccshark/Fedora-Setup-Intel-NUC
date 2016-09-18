

## OS X quick start (direct write)

*Destructive method*
This method will destroy all data on the USB stick. Alternative, non-destructive methods are described later in this document.

Unfortunately, there is no known useful graphical tool for a direct write on OS X. The UNetbootin utility described later in this document works on OS X, but cannot be guaranteed to produce reliably bootable Fedora images. This console-based method is not as graphically easy as using UNetbootin, but it is more reliable.

- Download a Fedora image, choose a USB stick that does not contain any data you need, and connect it
- Open a terminal
- Run **diskutil list**. This will list all disks connected to the system, as /dev/rdisk1, /dev/rdisk2 and so on. Identify - very carefully! - which one corresponds to ****the USB stick you wish to use. Hereafter, we'll assume it was /dev/rdisk2 - modify the commands as appropriate for your stick.
- Run **diskutil unmountDisk /dev/rdisk2**
- Type dd if=, then **drag and drop the Fedora image file to the terminal window** - this should result in its filesystem location being appended to the command. Now complete the command with of=/dev/rdisk2 bs=1m, but don't hit Enter yet. You should wind up with something like sudo dd if=/Volumes/Images/Fedora-Live-Desktop-x86_64-20-1.iso of=/dev/rdisk2 bs=1m
- Double-check you have the correct disk number and you're really, really sure you don't need any of the data on the USB stick!
- Hit Enter
- Wait for the operation to complete, then reboot your computer, and hold down the left Alt/Option key to access the boot menu - you should see a Fedora logo. Click this to boot.

## Additional Resources:
**Fedora**

* [https://getfedora.org/]([]())
* [https://docs.fedoraproject.org/en-US/Fedora/13/html/User_Guide/sect-User_Guide-Media-Making_bootable_USB_media.html]()

**Intel NUC**

* [http://www.intel.com/content/www/us/en/support/boards-and-kits/intel-nuc-boards/000005628.html]()
* [http://www.intel.com/content/www/us/en/nuc/nuc-kit-nuc6i5syh-nuc6i5syk-brief.html]()
* [https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB]()
