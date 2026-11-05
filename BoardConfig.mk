# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Platform
TARGET_BOARD_PLATFORM := mt6761

# Kernel & Ramdisk compression
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
BOARD_RAMDISK_USE_LZ4 := true

# A/B & Dynamic Partitions
AB_OTA_UPDATER := true
BOARD_SUPER_PARTITION_SIZE := <insert_size_from_stock_fstab>
BOARD_SUPER_PARTITION_GROUPS := tcl_dynamic_partitions
BOARD_TCL_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product

# TWRP Specific Flags
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
RECOVERY_SDCARD_ON_DATA := true
