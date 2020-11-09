# Thinkfan Installation and Configuration
For some odd reason the fan on my T420 runs constantly and at high RPMs so I looked into a program called thinkfan. Although thinkfan is not required to run your linux distro of choice, I would highly recommend installing it.

### Please Note
The thinkfan.yaml file is currently not working. Please use the thinkfan.conf file.

## Installation
Arch
```
yay -S thinkfan
```

### Enable Fan Control
```
sudo touch /etc/modprobe.d/thinkfan.conf

sudo sh -c 'echo "options thinkpad_acpi fan_control=1" >> /etc/modprobe.d/thinkfan.conf'

sudo modprobe -r thinkpad_acpi

sudo modprobe thinkpad_acpi
```

## Clone my-configs repo for /etc/thinkfan.conf file
```
git clone https://github.com/m5cott/my-configs.git

cd my-configs/thinkfan

sudo ln -s thinkfan.conf /etc/
```

### Enable thinkfan service
```
sudo systemctl enable thinkfan

sudo systemctl start thinkfan
```
