#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9918464:5656acd8a8cbe7c636cecf68da716fac5e431f01; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8744960:397480847354b6f025b8254df1d2a0bf72ad4820 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 5656acd8a8cbe7c636cecf68da716fac5e431f01 9918464 397480847354b6f025b8254df1d2a0bf72ad4820:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
