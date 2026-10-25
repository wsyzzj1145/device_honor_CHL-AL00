#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# 继承 TWRP 官方核心通用配置（存在时加载，不存在不崩溃）
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# 动态分区与 APEX 支持
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
