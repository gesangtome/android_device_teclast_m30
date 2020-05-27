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
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 47185920
BOARD_CACHEIMAGE_PARTITION_SIZE    := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2653945856
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE   := 687865856
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
TARGET_PREBUILT_KERNEL := device/teclast/M30/kernel-dtb

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# SELinux
BOARD_SEPOLICY_DIRS := vendor/omni/sepolicy

# Screen W/H
TARGET_SCREEN_WIDTH := 2560
TARGET_SCREEN_HEIGHT := 1600

# TWRP
DEVICE_RESOLUTION := 2560x1600
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_RECOVERY_SWIPE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

TW_THEME := landscape_hdpi
TW_DEVICE_VERSION := $(shell date "+%Y-%m-%d %H:%M:%S")
TW_BUILD_HOST := $(HOST_OS_EXTRA)
TW_USE_TOOLBOX := true
TW_INCLUDE_JPEG := true
TW_DEFAULT_BRIGHTNESS := 190
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/battery/power_supply/battery
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := true

TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/data/media/0"

ifeq ($(TARGET_BUILD_VARIANT),eng)
   TWRP_INCLUDE_LOGCAT := true
   TARGET_USES_LOGD := true
endif

