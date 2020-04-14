#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true

# Inherit from Corvus-ROM
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Flavour
DU_BUILD_TYPE := OFFICIAL

# PixelGApps
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := du_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="ginkgo" \
    TARGET_DEVICE="ginkgo"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
