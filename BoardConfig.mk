#
# Copyright (C) 2019-2020 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Teclast/M30/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_IS_64_BIT :=true
TARGET_USES_64_BIT_BINDER := true

# Board
TARGET_BOARD_PLATFORM := mt6797

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6797

# Filesystem
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_COPY_OUT_VENDOR := vendor
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 47185920
BOARD_CACHEIMAGE_PARTITION_SIZE    := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2653945856
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE   := 687865856
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
TARGET_PREBUILT_KERNEL := device/teclast/M30/prebuilt/kernel-dtb

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# SELinux
BOARD_SEPOLICY_DIRS := vendor/omni/sepolicy

# =======================
#       TWRP FLAGS
# =======================

# Whether to use the vertical theme?
# Default: landscape_hdpi
TW_THEME := landscape_hdpi

# Whether to use extended languages?
# Default: Chinese - The People's Republic of China
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN

# Whether to use the toolbox?
# Default: toolbox
TW_USE_TOOLBOX := true

# Whether to use the ntfs filesystem module?
# Default: ntfs-3g
TW_INCLUDE_NTFS_3G := true

# Whether to use input blacklist?
# Default: hbtp_vm
TW_INPUT_BLACKLIST := "hbtp_vm"

# Whether to set the panel brightness?
# Default: 160
# Max: 255
TW_DEFAULT_BRIGHTNESS := 1500
TW_MAX_BRIGHTNESS := 4095

# Whether to set the panel brightness path?
# Default: /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_BRIGHTNESS_PATH := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"

# Whether the twrp custom battery paths?
# Default: /sys/devices/platform/battery/power_supply/battery
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/battery/power_supply/battery"

# Whether the twrp custom temp paths?
# Default: /sys/devices/virtual/thermal/thermal_zone1/temp
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"

# Whether to customize the lun file path?
# Default: /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

# Whether to exclude generic init.{variants}.rc?
# Default: true
TW_EXCLUDE_DEFAULT_USB_INIT := true

# Whether to add recovery device module?
# Default: android.hardware.boot
# TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0

# Whether to customize the display pixel format?
# Default: BGRA_8888
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888

# Whether to display a blank screen when bootimg recovery?
# Default: false
TW_SCREEN_BLANK_ON_BOOT := false

# Whether to prompt 'install twrp app' when restarting
# Default: false
TW_EXCLUDE_TWRPAPP := true

# Whether the device has a real sdcard?
# Default: false
BOARD_HAS_NO_REAL_SDCARD := true

# Whether the SD card of the device is in userdata?
# Default: true
RECOVERY_SDCARD_ON_DATA := true

# Whether the twrp need logcat binary?
# Default: true
TWRP_INCLUDE_LOGCAT := true

# Whether the twrp need logd binary?
# Default: false
TARGET_USES_LOGD := true

# Whether the board has an large file system?
# Default: true
BOARD_HAS_LARGE_FILESYSTEM := true

# Whether the twrp need qcom RTC fix?
# Default: true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Whether the twrp include jpeg?
# Default: NULL
# TW_INCLUDE_JPEG := 

# Whether the twrp have legacy props?
# Default: false
TW_NO_LEGACY_PROPS := true

# Whether to prompt 'install supersu' when restarting
# Default: false
TW_EXCLUDE_SUPERSU := true

# Whether the twrp need CRYPTO?
# Default: true
TW_INCLUDE_CRYPTO := true

# Whether to use system vold to handle decryption?
# Default: true
TW_CRYPTO_USE_SYSTEM_VOLD := true

# SHRP-specific lines
SHRP_PATH := device/nubia/nx627j
SHRP_MAINTAINER := gesangtome
SHRP_DEVICE_CODE := NX627J
SHRP_EDL_MODE := 1
# SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
# SHRP_CUSTOM_FLASHLIGHT := true
#SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
#SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
#SHRP_FONP_3 := /sys/class/leds/led:torch_2/brightness
#SHRP_FONP_4 := /sys/class/leds/led:switch_0/brightness
#SHRP_FONP_5 := /sys/class/leds/led:switch_1/brightness
#SHRP_FONP_6 := /sys/class/leds/led:switch_2/brightness
SHRP_FLASH_MAX_BRIGHTNESS := 200
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A_Only
SHRP_STATUSBAR_RIGHT_PADDING := 80
SHRP_STATUSBAR_LEFT_PADDING := 80
SHRP_EXPRESS := true

