# android_device_PHICOMM_C230w
arhive_repo for android_device_PHICOMM_msm8610 with 'DEVICE := C230w'

# tested also TWRP2.8.6.0 (omni android-5.1) 
recovery is working fine, <br>
but that is 'too big' size of resulting "recovery.img" (11743232) -- via the size of recovery partition on device is only 10485760 (0xA00000) -- so it can be only 'fastboot boot' 
<br> maybe in future will try to compile 'smaller kernel' and use FLAG "TARGET_PREBUILT_RECOVERY_KERNEL := " for 
