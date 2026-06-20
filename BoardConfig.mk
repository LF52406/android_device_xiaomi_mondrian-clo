# Inherit from AOSPA sm8450-common BoardConfig
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Platform overrides for mondrian
TARGET_BOARD_PLATFORM := taro
TARGET_BOOTLOADER_BOARD_NAME := taro

# Boot Image Header
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Dynamic Partitions Setup (Standard POCO F5 Pro sizes)
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    odm \
    product \
    system \
    system_ext \
    vendor \
    vendor_dlkm
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200

# VINTF Manifests
DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/vintf/manifest.xml
