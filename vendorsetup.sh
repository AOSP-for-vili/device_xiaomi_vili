echo 'Cloning stuff needed to build for vili'

# Device common
echo 'Cloning common device tree'
git clone https://github.com/AOSP-for-vili/device_xiaomi_sm8350-common.git -b derp device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel'
git clone https://github.com/AOSP-for-vili/android_kernel_xiaomi_sm8350.git -b lineage-21 kernel/xiaomi/sm8350

# Hardware Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi
git clone https://github.com/AOSP-for-vili/android_hardware_xiaomi.git -b lineage-22.0 hardware/xiaomi

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/AOSP-for-vili/vendor_xiaomi_vili.git -b lineage-22 vendor/xiaomi/vili

# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/AOSP-for-vili/vendor_xiaomi_sm8350-common.git -b lineage-22 vendor/xiaomi/sm8350-common

# Meme camera
echo 'Cloning meme camera'
git clone https://github.com/AOSP-for-vili/vendor_xiaomi_camera.git vendor/xiaomi/camera

# Keys
echo 'Cloning private keys'
rm -rf vendor/derp/signing
git clone https://github.com/0mar99/private_keys.git -b derp vendor/derp/signing

# Display HAL (for Dolby Vision)
echo 'Cloning custom display HAL'
rm -rf hardware/qcom-caf/sm8350/display
git clone https://github.com/AOSP-for-vili/android_hardware_qcom_display.git -b lineage-22.0-caf-sm8350 hardware/qcom-caf/sm8350/display

# Leica patch
echo 'Adding Leica camera patch'
cd frameworks/base
wget https://raw.githubusercontent.com/xiaomi-haydn-devs/Patch-Haydn/14/Leicamera/0001-Add-backwards-compatible-CaptureResultExtras-constructor.patch
patch -p1 <0001-Add-backwards-compatible-CaptureResultExtras-constructor.patch
cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'
