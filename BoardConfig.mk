DEVICE_PATH := device/samsung/m20lte

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_a7y18lte

# TODO:check this
# Kernel
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := a7y18lte_defconfig
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# TODO:check Recovery size
# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4093640704
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888

# TODO:complete fstab
# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos7885

#TODO:check this
# Sepolicy
BOARD_SEPOLICY_TEE_FLAVOR := mobicore

# SPL
VENDOR_SECURITY_PATCH := 2022-07-01

# TODO:Build this
# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk
