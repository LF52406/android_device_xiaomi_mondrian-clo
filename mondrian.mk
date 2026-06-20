# Inherit from AOSPA sm8450-common platform
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Device identifiers
PRODUCT_NAME := mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Rootdir / Init files
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mondrian.rc
