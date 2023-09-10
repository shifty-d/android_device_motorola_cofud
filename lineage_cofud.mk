#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cofud device
$(call inherit-product, device/motorola/cofud/device.mk)

PRODUCT_DEVICE := cofud
PRODUCT_NAME := lineage_cofud
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g31(w)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cofud_g-user 11 RRWD31.Q3-26-73 e8e76 release-keys"

BUILD_FINGERPRINT := motorola/cofud_g/cofud:11/RRWD31.Q3-26-73/e8e76:user/release-keys
