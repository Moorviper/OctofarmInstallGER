# gehe in das home verzeichni ms / go to the home folder
cd ~

# überprüfen / check
pwd
/home/danielkrah

# Octoprint
git clone https://github.com/foosel/OctoPrint.git
Klone nach 'OctoPrint' ...
# mjpg-streamer
git clone https://github.com/jacksonliam/mjpg-streamer.git
Klone nach 'mjpg-streamer' ...
# bindp für das binden der Programme an die veweilige IP/Port
git clone https://github.com/yongboy/bindp.git
Klone nach 'bindp' ...

# installation of OctoPrint
# Create virtual enviroment and install
cd OctoPrint/ && virtualenv venv
./venv/bin/pip install pip --upgrade
./venv/bin/python setup.py install


#  webcams

cd ~
cd mjpg-streamer/mjpg-streamer-experimental
make clean
make
make install

~/mjpg-streamer/mjpg-streamer-experimental/plugins/input_testpicture
make
cp input_testpicture.so ../
cp input_testpicture.so ../../
cd ~/mjpg-streamer/mjpg-streamer-experimental/


# input_testpicture
cd ~/mjpg-streamer/mjpg-streamer-experimental/plugins/input_testpicture
make
cp input_testpicture.so ../
cp input_testpicture.so ../../
cd ~/mjpg-streamer/mjpg-streamer-experimental/


lsusb

...
Bus 001 Device 007: ID 046d:0825 Logitech, Inc. Webcam C270
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 ?
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x046d Logitech, Inc.
  idProduct          0x0825 Webcam C270
  bcdDevice            0.10
  iManufacturer           0
  iProduct                0
  iSerial                 2 AF1943F0
  bNumConfigurations      1
  Configuration Descriptor:



  Bus 001 Device 002: ID 046d:081b Logitech, Inc. Webcam C310
  Device Descriptor:
    bLength                18
    bDescriptorType         1
    bcdUSB               2.00
    bDeviceClass          239 Miscellaneous Device
    bDeviceSubClass         2 ?
    bDeviceProtocol         1 Interface Association
    bMaxPacketSize0        64
    idVendor           0x046d Logitech, Inc.
    idProduct          0x081b Webcam C310
    bcdDevice            0.10
    iManufacturer           0
    iProduct                0
    iSerial                 2 4B8254A0
    bNumConfigurations      1
    Configuration Descriptor:

...


sudo nano /etc/udev/rules.d/01-webcam-usb.rules

SUBSYSTEMS=="usb", ATTR{idVendor}=="046d", ATTR{idProduct}=="081b", ATTRS{serial}=="4B8254A0", SYMLINK+="logitechC310dollyMK3"
SUBSYSTEMS=="usb", ATTR{idVendor}=="046d", ATTR{idProduct}=="0825", ATTRS{serial}=="AF1943F0", SYMLINK+="logitechC270dollyMK2"

sudo udevadm trigger

ls /dev/ | grep -i logit
# Ausgabe / output
logitechC270dollyMK2
logitechC310dollyMK3
