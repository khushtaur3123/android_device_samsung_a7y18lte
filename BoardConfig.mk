#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a7y18lte

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

BUILD_BROKEN_DUP_RULES := true

TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a7y18ltejt,a7y18lte

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := exynos7885
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false # otherwise causes "ln: cannot create hard link from 'out/target/product/a7y18lte/lineage-17.1-20230919-UNOFFICIAL-a7y18lte.zip' to './lineage-17.1-20230919-UNOFFICIAL-a7y18lte.zip': No such file or directory"

# Display
TARGET_SCREEN_DENSITY := 420
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080
TARGET_USES_VULKAN := true

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
#TARGET_COPY_OUT_ODM := odm
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor odm

# Fingerprint
TARGET_SEC_FP_REQUEST_FORCE_CALIBRATE := true
TARGET_SEC_FP_HAS_FINGERPRINT_GESTURES := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_CMDLINE := androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_KERNEL_CONFIG := exynos7885-a7y18lte_m_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/universal7885
TARGET_KERNEL_ADDITIONAL_FLAGS += HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"ve

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 25903648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 34431520
BOARD_CACHEIMAGE_PARTITION_SIZE    := 262144000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4093640704
BOARD_VENDORIMAGE_PARTITION_SIZE   := 520000000
BOARD_ODMIMAGE_PARTITION_SIZE   := 570425344


# Platform
TARGET_BOARD_PLATFORM := universal7885
BOARD_VENDOR := samsung
TARGET_SOC := exynos7885
TARGET_BOOTLOADER_BOARD_NAME := universal7885

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
BOARD_HAS_DOWNLOAD_MODE := true

# Security
VENDOR_SECURITY_PATCH := 2021-11-01

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# VNDK
BOARD_VNDK_VERSION := current
PRODUCT_TARGET_VNDK_VERSION := 29

# Inherit the proprietary files
include vendor/samsung/a7y18lte/BoardConfigVendor.mk

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Inherit common board flags
# include device/samsung/universal9810-common/BoardConfigCommon.mk