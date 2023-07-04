DEVICE_PATH := device/samsung/a7y18lte

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_a7y18lte

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := exynos7885-a7y18lte_defconfig
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4093640704
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888

#Filesystem
#BOARD_PARTITIONS_PARTITION_LIST := \
#        system \
#        vendor \
#        odm
#		product (Not present seperatley, present inside system partition)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 
TARGET_COPY_OUT_ODM := odm

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos7885

# Sepolicy
BOARD_SEPOLICY_TEE_FLAVOR := teegris

# SPL
VENDOR_SECURITY_PATCH := 2021-07-01

# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk
