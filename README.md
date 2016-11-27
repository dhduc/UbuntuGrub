# Ubuntu-Grub #
@author: dhduc

## How to setup on Ubuntu 14.04 ##

Install Grub Customizer:

```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update
sudo apt-get install grub-customizer -y
```

Copy UbuntuGrub to boot grub theme folder:

```
sudo cp -r UbuntuGrub /boot/grub/themes
```
Make sure that /boot/grub/themes folder exist, if not please create it.
Open Grub Customizer with Admintrator privileges

In Appearance Setting tab, chose UbuntuGrub for Theme field, click Save button. 

That's all!

**Note**: If not see the UbuntuGrub, please restart the Grub Customizer.

