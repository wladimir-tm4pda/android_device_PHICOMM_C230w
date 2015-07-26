# android_device_PHICOMM_C230w
arhive_repo for android_device_PHICOMM_msm8610 with 'DEVICE := C230w'

tested TWRP2.8.6.0 (omni android-5.1) 
recovery is working fine, <br>
but that is 'too big' size of resulting "recovery.img" (11743232) -- via the size of recovery partition on device is only 10485760 (0xA00000) -- so <b>it can be only 'fastboot boot'</b><br>
# if you flash this recovery - it will brick your device!!
<br> maybe in future will try to compile 'smaller kernel' and use FLAG "TARGET_PREBUILT_RECOVERY_KERNEL := " for 
<br> details:
<<<<<<< HEAD
<br>http://forum.xda-developers.com/showpost.php?p=62044653&postcount=394
=======
<br>http://forum.xda-developers.com/showpost.php?p=62044653&postcount=394
>>>>>>> 22f3f7a6a3a8c6dd63a151cabc8fcdd54a5242a3
