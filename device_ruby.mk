#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/ruby/overlay

# GPS and Light
PRODUCT_PACKAGES += \
    gps.ruby \
    lights.ruby

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# US GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Ramdisk files
PRODUCT_COPY_FILES += \
    device/htc/ruby/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/htc/ruby/ramdisk/init.ruby.rc:root/init.ruby.rc \
    device/htc/ruby/ramdisk/init.ruby.usb.rc:root/init.ruby.usb.rc \
    device/htc/ruby/ramdisk/ueventd.ruby.rc:root/ueventd.ruby.rc

# QCOM scripts
PRODUCT_COPY_FILES += \
    device/htc/ruby/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/htc/ruby/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/htc/ruby/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/htc/ruby/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/htc/ruby/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh

# Vold
PRODUCT_COPY_FILES += \
    device/htc/ruby/vold.fstab:system/etc/vold.fstab

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/ruby/keychars/ruby-keypad.kcm:system/usr/keychars/ruby-keypad.kcm \
    device/htc/ruby/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/ruby/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/ruby/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/ruby/keylayout/ruby-keypad.kl:system/usr/keylayout/ruby-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/ruby/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/ruby/idc/ruby-keypad.idc:system/usr/idc/ruby-keypad.idc

# QC thermald config
PRODUCT_COPY_FILES += device/htc/ruby/configs/thermald.conf:system/etc/thermald.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/ruby/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/ruby/dsp/AIC3254_REG_DualMic_XD.csv:system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/ruby/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/ruby/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/ruby/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/ruby/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/ruby/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/ruby/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XB.csv \
    device/htc/ruby/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/ruby/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/ruby/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/ruby/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/ruby/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/ruby/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/ruby/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/ruby/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/ruby/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/ruby/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/ruby/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/ruby/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Custom media config for HTC camera
PRODUCT_COPY_FILES += \
    device/htc/ruby/configs/media_profiles.xml:system/etc/media_profiles.xml

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/ruby/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/ruby/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/ruby/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/ruby/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/ruby/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    device/htc/ruby/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb \
    device/htc/ruby/firmware/default_rogers_bak.acdb:system/etc/firmware/default_rogers_bak.acdb

# wifi firmware
PRODUCT_COPY_FILES += \
    device/htc/ruby/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    device/htc/ruby/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/htc/ruby/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/htc/ruby/firmware/ti-connectivity/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/htc/ruby/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    device/htc/ruby/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    device/htc/ruby/firmware/htc_1271fw.bin:system/etc/firmware/htc_1271fw.bin \
    device/htc/ruby/firmware/htc_1271fw_196_header.bin:system/etc/firmware/htc_1271fw_196_header.bin \
    device/htc/ruby/firmware/TIInit_7.6.15.bts:system/etc/firmware/TIInit_7.6.15.bts \
    device/htc/ruby/firmware/WL127x_2.0_2.25.bts:system/etc/firmware/WL127x_2.0_2.25.bts \
    device/htc/ruby/firmware/vac_config.ini:system/etc/firmware/vac_config.ini \
    device/htc/ruby/firmware/version:system/etc/firmware/version \
    device/htc/ruby/wifi/firmware.bin:system/etc/wifi/firmware.bin \
    device/htc/ruby/wifi/firmware_ap.bin:system/etc/wifi/firmware_ap.bin \
    device/htc/ruby/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/htc/ruby/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/htc/ruby/wifi/tiwlan_ap.ini:system/etc/wifi/tiwlan_ap.ini \
    device/htc/ruby/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Kernel modules
ifeq ($(TARGET_PREBUILT_KERNEL),)
PRODUCT_COPY_FILES += $(shell \
    find device/htc/ruby/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')
endif

# call proprietary setup
$(call inherit-product-if-exists, vendor/htc/ruby/ruby-vendor.mk)# media profiles and capabilities spec

# htc audio settings
$(call inherit-product, device/htc/ruby/media_a1026.mk)
$(call inherit-product, device/htc/ruby/media_htcaudio.mk)

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
