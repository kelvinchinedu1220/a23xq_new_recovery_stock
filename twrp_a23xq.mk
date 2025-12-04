#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a23xq device
$(call inherit-product, device/samsung/a23xq/device.mk)

PRODUCT_DEVICE := a23xq
PRODUCT_NAME := twrp_a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pb_a23xq-eng 12 SD2A.220601.004.B2 eng.runner.20250925.191404 test-keys"

BUILD_FINGERPRINT := samsung/pb_a23xq/a23xq:12/SD2A.220601.004.B2/runner09251911:eng/test-keys
