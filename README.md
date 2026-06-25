![luckfox](https://github.com/LuckfoxTECH/luckfox-pico/assets/144299491/cec5c4a5-22b9-4a9a-abb1-704b11651e88)
# Luckfox Pico SDK
* This SDK is modified based on the SDK provided by Luckfox, which is a modified SDK by Rockchip
* It provides a customized SDK specifically for use with my project(s)

## Current modifications
* [x] Added a new board "custom" which is based on Luckfox Pico Zero and contains all the modifications made to the original SDK.
* [x] Implemented driver support for the IMX219 camera.
* [ ] Moved to MUSL for compatibility with NumPy and OpenCV via Python.
* [ ] Added IQ files and other necessary configuration for the IMX219 camera.
* [ ] Added drivers and scripts for ESP-HOSTED for WiFi and Bluetooth support.

## SDK Usage Instructions
* Recommended operating system : Ubuntu 22.04 (via docker)

## Starting SDK
* The SDK can be started via the `start_docker.sh` script.

### Instructions for build.sh
* The build.sh script is used to automate the compilation process. 
* Most of the compilation operations can be completed automatically through build.sh.

#### Options for build.sh
```shell
Usage: build.sh [OPTIONS]
Available options:
lunch              -Select Board Configure
env                -build env
meta               -build meta (optional)
uboot              -build uboot
kernel             -build kernel
rootfs             -build rootfs
driver             -build kernel's drivers
sysdrv             -build uboot, kernel, rootfs
media              -build rockchip media libraries
app                -build app
recovery           -build recovery
tool               -build tool
updateimg          -build update image
unpackimg          -unpack update image
factory            -build factory image
all                -build uboot, kernel, rootfs, recovery image
allsave            -build all & firmware & save

clean              -clean all
clean uboot        -clean uboot
clean kernel       -clean kernel
clean driver       -clean driver
clean rootfs       -clean rootfs
clean sysdrv       -clean uboot/kernel/rootfs
clean media        -clean rockchip media libraries
clean app          -clean app
clean recovery     -clean recovery

firmware           -pack all the image we need to boot up system
ota                -pack update_ota.tar
save               -save images, patches, commands used to debug
check              -check the environment of building
info               -see the current board building information

buildrootconfig    -config buildroot and save defconfig"
kernelconfig       -config kernel and save defconfig"
```

#### Select the referenced board configuration
```shell
./build.sh lunch
```

## Notices
When copying the source code package under Windows, the executable file under Linux may become a non-executable file, or the soft link fails and cannot be compiled and used.
Therefore, please be careful not to copy the source code package under Windows.
