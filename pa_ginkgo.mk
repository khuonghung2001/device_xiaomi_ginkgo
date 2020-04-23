#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Check for target product
ifeq (pa_ginkgo,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit common PA configuration
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pa_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ginkgo-user 9 PKQ1.190616.001 V11.0.3.0.PCOMIXM release-keys" \
    PRODUCT_NAME="ginkgo" \
    TARGET_DEVICE="ginkgo"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif
