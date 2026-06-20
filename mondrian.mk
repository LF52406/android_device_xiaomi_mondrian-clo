# Inherit from AOSPA sm8450-common platform
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Device identifiers
PRODUCT_NAME := aospa_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation resolution tailored for WQHD+ display
TARGET_BOOT_ANIMATION_RES := 1440

# System Properties override
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/system.prop

# Rootdir / Filesystem init packages
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mondrian.rc
