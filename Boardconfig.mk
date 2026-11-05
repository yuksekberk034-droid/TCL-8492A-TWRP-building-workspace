# Logical / Dynamic Partitions
system /system ext4 ro wait,logical,first_stage_mount,slotselect
system_ext /system_ext ext4 ro wait,logical,first_stage_mount,slotselect
vendor /vendor ext4 ro wait,logical,first_stage_mount,slotselect
product /product ext4 ro wait,logical,first_stage_mount,slotselect

# Metadata & Userdata
/dev/block/by-name/md_udc /metadata ext4 noatime,nosuid,nodev,discard wait,check,formattable,first_stage_mount
/dev/block/by-name/userdata /data f2fs noatime,nosuid,nodev,discard,noflush_merge,fsync_mode=nobarrier,reserve_root=134217,resgid=1065,inlinecrypt latemount,wait,check,quota,reservedsize=128M,formattable,resize,checkpoint=fs,fileencryption=aes-256-xts:aes-256-cts:v2,keydirectory=/metadata/vold/metadata_encryption

# <src>                                 <mnt_point>        <type>      <mnt_flags and options>             <fs_mgr_flags>
/dev/block/by-name/boot                 /boot              emmc        defaults                            recoveryonly
/dev/block/by-name/vendor_boot    /vendor_boot    emmc    defaults    first_stage_mount,nofail

# MTK Vendor Protect & NVRAM
/dev/block/by-name/protect1 /mnt/vendor/protect_f ext4 noatime,nosuid,nodev,noauto_da_alloc,commit=1,nodelalloc wait,check,formattable
/dev/block/by-name/protect2 /mnt/vendor/protect_s ext4 noatime,nosuid,nodev,noauto_da_alloc,commit=1,nodelalloc wait,check,formattable
/dev/block/by-name/nvdata /mnt/vendor/nvdata ext4 noatime,nosuid,nodev,noauto_da_alloc,commit=1,nodelalloc wait,check,formattable
/dev/block/by-name/nvcfg /mnt/vendor/nvcfg ext4 noatime,nosuid,nodev,noauto_da_alloc,commit=1,nodelalloc wait,check,formattable

# External Storage (SD Card & USB OTG)
/external_sd   auto   /dev/block/mmcblk1p1   /dev/block/mmcblk1   flags=display="MicroSD Card";storage;wipeingui;removable
/usb_otg       auto   /dev/block/sda1        /dev/block/sda       flags=display="USB OTG";storage;wipeingui;removable

# Core Boot Partitions
/dev/block/by-name/frp /persistent emmc defaults defaults
/dev/block/by-name/nvram /nvram emmc defaults defaults
/dev/block/by-name/proinfo /proinfo emmc defaults defaults
/dev/block/by-name/lk /bootloader emmc defaults defaults
/dev/block/by-name/lk2 /bootloader2 emmc defaults defaults
/dev/block/by-name/para /misc emmc defaults defaults
/dev/block/by-name/vendor_boot /vendor_boot emmc defaults first_stage_mount,nofail,slotselect
/dev/block/by-name/init_boot /init_boot emmc defaults first_stage_mount,nofail,slotselect
/dev/block/by-name/boot /boot emmc defaults first_stage_mount,nofail,slotselect

# VBMeta
/dev/block/by-name/vbmeta_vendor /vbmeta_vendor emmc defaults first_stage_mount,nofail,slotselect
/dev/block/by-name/vbmeta_system /vbmeta_system emmc defaults first_stage_mount,nofail,slotselect
/dev/block/by-name/vbmeta /vbmeta emmc defaults defaults

# MediaTek Firmware & Hardware Trust
/dev/block/by-name/logo /logo emmc defaults defaults
/dev/block/by-name/expdb /expdb emmc defaults defaults
/dev/block/by-name/seccfg /seccfg emmc defaults defaults
/dev/block/by-name/tee1 /tee1 emmc defaults defaults
/dev/block/by-name/tee2 /tee2 emmc defaults defaults
/dev/block/by-name/scp1 /scp1 emmc defaults defaults
/dev/block/by-name/scp2 /scp2 emmc defaults defaults
/dev/block/by-name/sspm_1 /sspm_1 emmc defaults defaults
/dev/block/by-name/sspm_2 /sspm_2 emmc defaults defaults
/dev/block/by-name/md1img /md1img emmc defaults defaults
/dev/block/by-name/md1dsp /md1dsp emmc defaults defaults
/dev/block/by-name/md1arm7 /md1arm7 emmc defaults defaults
/dev/block/by-name/md3img /md3img emmc defaults defaults
/dev/block/by-name/gz1 /gz1 emmc defaults defaults
/dev/block/by-name/gz2 /gz2 emmc defaults defaults
/dev/block/by-name/spmfw /spmfw emmc defaults defaults
/dev/block/by-name/boot_para /boot_para emmc defaults defaults
/dev/block/by-name/dtbo1 /dtbo1 emmc defaults defaults
/dev/block/by-name/dtbo2 /dtbo2 emmc defaults defaults
/dev/block/by-name/dtbo /dtbo emmc defaults defaults
