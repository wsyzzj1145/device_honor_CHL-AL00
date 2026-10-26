#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/honor/CHL-AL00

# Architecture (ARM64)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_TAGS_OFFSET := 0x07888000
BOARD_BOOT_HEADER_VERSION := 2

# 关键内核参数：放行 SELinux 并将看门狗超时延长到 10 分钟
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive mtk_wdt.timeout=600

# 动态分区 Super 声明
BOARD_SUPER_PARTITION_SIZE := 10200547328
BOARD_SUPER_PARTITION_GROUPS := honor_dynamic_partitions
BOARD_HONOR_DYNAMIC_PARTITIONS_SIZE := 10200547328
BOARD_HONOR_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product

# 屏幕分辨率与主题
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TW_THEME := portrait_hdpi

# ----------------------------------------------------
# 终极防闪退防重启配置（修复 Gamma 空指针与看门狗）
# ----------------------------------------------------
# 1. 彻底禁止 TWRP 软件级触碰背光与伽马色彩寄存器（防止 lcd_kit 崩溃）
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/nop"
TW_MAX_BRIGHTNESS := 0

# 2. 禁用易崩溃的后台轮询线程
TW_NO_BATT_PERCENT := true
TW_NO_CPU_TEMP := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_USB_STORAGE := true
TW_NO_SCREEN_TIMEOUT := true

# 3. 禁用加密库
TW_INCLUDE_CRYPTO := false
