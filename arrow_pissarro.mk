#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from pissarro device makefile
$(call inherit-product, device/xiaomi/pissarro/device.mk)

# Inherit some source stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pissarro
PRODUCT_NAME := arrow_pissarro
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11 Pro+ 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=pissarro \
    PRODUCT_NAME=pissarro \
    PRIVATE_BUILD_DESC="pissarro-user 11 RP1A.200720.011 V12.5.6.0.RKTINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/pissarroin/pissarro:11/RP1A.200720.011/V12.5.6.0.RKTINXM:user/release-keys
