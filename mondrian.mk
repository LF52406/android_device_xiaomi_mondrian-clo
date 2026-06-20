# Inherit from CLO QSSI taro platform
$(call inherit-product, device/qcom/taro/taro.mk)

# Device identifiers
PRODUCT_NAME := mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Target Android 16 (API 36)
PRODUCT_SHIPPING_API_LEVEL := 33
PRODUCT_TARGET_VNDK_VERSION := 36

# Enforce strict artifact path requirements
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := strict

# Include system properties
TARGET_SYSTEM_PROP += $(LOCAL_DIR)/system.prop

# Rootdir / Init files
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mondrian.rc
