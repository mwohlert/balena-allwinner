FILESEXTRAPATHS_prepend := "${THISDIR}/linux-mainline:"

# These patches were fetched from the lovely guys at armbian: https://github.com/armbian/build/tree/master/patch/kernel/sunxi-next
SRC_URI_append = " \
    file://armbian/0000-0001-clk-sunxi-ng-Set-maximum-M-1-for-H3-pll-cpux-clock.patch \
    file://armbian/0000-0002-clk-sunxi-ng-Allow-to-limit-the-use-of-NKMP-clock-s-.patch \
    file://armbian/0000-0003-clk-sunxi-ng-Limit-pll_cpux-P-factor-for-rates-288MH.patch \
    file://armbian/0000-0004-thermal-sun8i_ths-Add-support-for-the-thermal-sensor.patch \
    file://armbian/0000-0005-thermal-sun8i-Add-support-for-A83T-thermal-sensors.patch \
    file://armbian/0000-0006-dt-bindings-document-sun8i_ths-H3-thermal-sensor-dri.patch \
    file://armbian/0000-0007-ARM-dts-sunxi-h3-h5-Add-thermal-sensor-node-to-H3-H5.patch \
    file://armbian/0000-0008-cpufreq-dt-platdev-Add-allwinner-sun50i-h5-compatibl.patch \
    file://armbian/0000-0009-ARM-dts-sun8i-Increase-max-CPUX-voltage-to-1.4V-on-O.patch \
    file://armbian/0000-0010-ARM-dts-sun8i-h3-Add-clock-frequency.patch \
    file://armbian/0000-0011-arm64-dts-sun50i-h5-Add-clock-frequency.patch \
    file://armbian/0000-0012-ARM-dts-sunxi-h3-h5-Move-CPU-OPP-table-to-dtsi-share.patch \
    file://armbian/0000-0013-ARM-dts-sunxi-h3-h5-Add-more-CPU-OPP-for-H3-H5.patch \
    file://armbian/0000-0014-ARM-dts-sunxi-h3-h5-Add-thermal-zone-trip-points.patch \
    file://armbian/0000-0015-arm64-dts-sun50i-h5-Enable-cpufreq-dt-on-H5-CPU.patch \
    file://armbian/0000-0016-arm64-dts-sun50i-h5-orange-pi-pc2-Setup-CPUX-voltage.patch \
    file://armbian/0000-0017-Input-edt-ft5x06-Add-support-for-regulator.patch \
    file://armbian/0000-0018-Input-edt-ft5x06-Set-wake-reset-values-on-resume-sus.patch \
    file://armbian/0000-0019-arm-dts-sun8i-a83t-a711-Add-touchscreen-node.patch \
    file://armbian/0000-0020-power-supply-axp20x_usb_power-add-function-to-get-ma.patch \
    file://armbian/0000-0021-power-supply-axp20x_usb_power-add-support-for-AXP813.patch \
    file://armbian/0000-0022-ARM-dtsi-axp813-add-USB-power-supply-node.patch \
    file://armbian/0000-0023-mfd-axp20x-add-USB-power-supply-mfd-cell-to-AXP813.patch \
    file://armbian/0000-0024-mfd-axp20x-add-regulator-userspace-consumer-to-mfd-c.patch \
    file://armbian/0000-0025-power-supply-axp20x-usb-power-Support-input-current-.patch \
    file://armbian/0000-0026-mfd-axp20x-Make-AXP22X_CHRG_CTRL3-because-it-is-upda.patch \
    file://armbian/0000-0027-arm-dts-sun8i-a83t-a711-update-brightness-levels-to-.patch \
    file://armbian/0000-0028-media-sun6i-csi-Add-support-for-Allwinner-CSI.patch \
    file://armbian/0000-0029-MAINTAINERS-Add-entry-for-Himax-HM5065.patch \
    file://armbian/0000-0030-media-dt-bindings-Add-bindings-for-Himax-HM5065-came.patch \
    file://armbian/0000-0031-ARM-dts-sun8i-a83t-Add-CSI0-node-for-cmos-sensor-int.patch \
    file://armbian/0000-0032-ARM-dts-sun8i-a83t-tbs-a711-Force-dvdd-csi-r-f-regul.patch \
    file://armbian/0000-0033-ARM-dts-sun8i-a83t-tbs-a711-Use-i2c-gpio-to-communic.patch \
    file://armbian/0000-0034-ARM-dts-sun8i-a83t-tbs-a711-Add-rear-camera-sensor-H.patch \
    file://armbian/0000-0035-ARM-dts-sun8i-a83t-tbs-a711-Reduce-camera-IOVDD-volt.patch \
    file://armbian/0000-0036-ARM-dts-sun8i-a83t-tbs-a711-Add-flash-led-support.patch \
    file://armbian/0000-0037-media-hm5065-Add-subdev-driver-for-Himax-HM5065-came.patch \
    file://armbian/0000-0038-arm-dts-sun8i-a83t-a711-Enable-I2C1.patch \
    file://armbian/0000-0039-ARM-dts-sun8i-a83t-tbs-a711-Enable-BMA250-accelerome.patch \
    file://armbian/0000-0040-ARM-dts-sun8i-a83t-tbs-a711-Enable-LTR-501-ALS-IIO.patch \
    file://armbian/0000-0041-iio-ltr501-Add-OF-compatibles.patch \
    file://armbian/0000-0042-ARM-dts-sun8i-a83t-tbs-a711-Enable-AK8963-magnetomet.patch \
    file://armbian/0000-0043-nfc-pn544-Add-support-for-VBAT-PVDD-regulators.patch \
    file://armbian/0000-0044-ARM-dts-sun8i-a83t-tbs-a711-Add-PN544-NFC-support.patch \
    file://armbian/0000-0045-input-sun4i-a10-lradc-keys-Add-support-for-A83T.patch \
    file://armbian/0000-0046-ARM-dts-sun8i-a83t-Add-lradc.patch \
    file://armbian/0000-0047-ARM-dts-sun8i-a83t-tbs-a711-Add-support-for-volume-k.patch \
    file://armbian/0000-0048-misc-tbs-a711-Power-manager-and-wakeup-monitoring-dr.patch \
    file://armbian/0000-0049-ARM-dts-sun8i-a83t-Add-uart2-uart4.patch \
    file://armbian/0000-0050-ARM-dts-sun8i-a83t-Add-uart2-PB-pins.patch \
    file://armbian/0000-0051-ARM-dts-sun8i-a83t-tbs-a711-Enable-uart2-and-add-gps.patch \
    file://armbian/0000-0052-ARM-dts-sun8i-a83t-tbs-a711-Add-powerup-down-support.patch \
    file://armbian/0000-0053-ARM-dts-suni-a83t-Add-support-for-I2S-controller.patch \
    file://armbian/0000-0054-ARM-dts-suni-a83t-Add-i2s0-pins.patch \
    file://armbian/0000-0055-ARM-dts-suni-a83t-tbs-a711-Enable-I2S0-for-communica.patch \
    file://armbian/0000-0056-sound-soc-ac100-codec-Initial-implementation.patch \
    file://armbian/0000-0057-leds-axp20x-Support-leds-on-AXP20x-like-PMICs-AXP813.patch \
    file://armbian/0000-0058-ARM-dts-axp813-Enable-power-supply-led-control.patch \
    file://armbian/0000-0059-ARM-dts-sun8i-a83t-Describe-A83T-thermal-zones.patch \
    file://armbian/0000-0060-ARM-dts-sun8i-a83t-tbs-a711-Enable-thermal-sensor.patch \
    file://armbian/0000-0061-ARM-dts-sun8i-a83t-tbs-a711-Enable-thermal-regulatio.patch \
    file://armbian/0000-0062-ARM-dts-sun8i-a83t-tbs-Increase-voltage-on-the-vibra.patch \
    file://armbian/0000-0063-phy-sun4i-usb-Add-DT-property-to-force-ID-VBUS-polli.patch \
    file://armbian/0000-0064-ARM-dts-sun8i-a83t-tbs-a711-Enable-force-poll-vbus-i.patch \
    file://armbian/0000-0065-arm-dts-sun8i-a83t-tbs-a711-GPS-regulator-is-apparen.patch \
    file://armbian/0000-0066-WIP-Figure-out-how-to-use-new-bluetooth-OF-driver-bi.patch \
    file://armbian/0000-0067-mmc-add-delay-after-power-class-selection.patch \
    file://armbian/0000-0068-ARM-dts-sun8i-a83t-Add-clock-frequency-to-avoid-boot.patch \
    file://armbian/0000-0069-media-hm5065-Port-to-4.17-drop-use-of-s_parm-g_parm-.patch \
    file://armbian/0000-0070-media-sun6i-csi-Port-to-4.17-use-v4l2_g_parm_cap-v4l.patch \
    file://armbian/0000-0071-ARM-dts-sun8i-a83t-Add-missing-clock-properties-to-c.patch \
    file://armbian/0000-0072-ARM-dts-sun8i-a83t-Add-missing-cooling-cells-propert.patch \
    file://armbian/0000-0073-ARM-dts-sun8i-a83t-Add-labels-to-all-cpu-nodes.patch \
    file://armbian/0000-0074-Allow-to-disable-cluster2-on-A83T-permanently.patch \
    file://armbian/0000-0075-Make-microbuttons-on-Orange-Pi-PC-and-PC-2-work-as-p.patch \
    file://armbian/0000-0076-arm64-dts-sun50i-h5-Add-mali-GPU-node.patch \
    file://armbian/0000-0077-drm-bridge-synopsys-dw_hdmi-Add-a-quirk-to-automatic.patch \
    file://armbian/0000-0078-drm-sun4i-Enable-auto_cts-quirk-for-DW-HDMI.patch \
    file://armbian/0000-0079-HACK-Enable-HDMI-audio-on-H3-H5.patch \
    file://armbian/0000-0080-Add-support-for-my-private-Sapomat-device.patch \
    file://armbian/0000-0081-Support-Castles-Vega5000-PoS-terminal-USB.patch \
    file://armbian/0000-0082-ARM-dts-sun8i-a83t-tbs-a711-Change-MMC0-bus-width-to.patch \
    file://armbian/0000-remove-old-ths-node.patch \
    file://armbian/0000-unlock-h5-dvfs.patch \
    file://armbian/0001-arm64-allwinner-a64-enable-Wi-Fi-for-Pine64.patch \
    file://armbian/0001-arm64-dts-allwinner-a64-Enable-A64-timer-workaround.patch \
    file://armbian/0001-pinctrl-sunxi-Disable-strict-mode-for-A64-pinctrl-dr.patch \
    file://armbian/0002-arm64-allwinner-a64-add-Mali-device-node.patch \
    file://armbian/0003-net-stmmac-dwmac-sun8i-support-RGMII-modes-with-PHY-.patch \
    file://armbian/0004-arm64-allwinner-a64-disable-the-RTL8211E-internal-RX.patch \
    file://armbian/0005-drm-gem-cma-Export-with-handle-allocator.patch \
    file://armbian/0006-drm-sun4i-Add-GEM-allocator.patch \
    file://armbian/0007-Add-sopine-HDMI-sound-and-WiFi-support.patch \
    file://armbian/0008-arm64-dts-sun50i-a64-pine64-add-HDMI-audio-nodes.patch \
    file://armbian/0009-dt-bindings-update-the-Allwinner-GPADC-device-tree-b.patch \
    file://armbian/0011-iio-adc-sun4i-gpadc-iio-rename-A33-specified-registe.patch \
    file://armbian/0012-iio-adc-sun4i-gpadc-iio-rework-sampling-start-end-co.patch \
    file://armbian/0013-iio-adc-sun4i-gpadc-iio-rework-support-clocks-and-re.patch \
    file://armbian/0014-iio-adc-sun4i-gpadc-iio-rework-support-multible-sens.patch \
    file://armbian/0015-iio-adc-sun4i-gpadc-iio-rework-support-nvmem-calibra.patch \
    file://armbian/0016-iio-adc-sun4i-gpadc-iio-rework-add-interrupt-support.patch \
    file://armbian/0017-iio-adc-sun4i-gpadc-iio-add-support-for-H3-thermal-s.patch \
    file://armbian/0018-iio-adc-sun4i-gpadc-iio-add-support-for-A83T-thermal.patch \
    file://armbian/0019-arm-dts-sunxi-h3-h5-add-support-for-the-thermal-sens.patch \
    file://armbian/0020-arm-dts-sun8i-h3-add-support-for-the-thermal-sensor-.patch \
    file://armbian/0021-arm-dts-sun8i-h3-add-thermal-zone-to-H3.patch \
    file://armbian/0026-iio-adc-Kconfig-enable-A80-A64-and-H5-for-THS.patch \
    file://armbian/0027-iio-adc-sun4i-gpadc-iio-add-support-for-H5-thermal-s.patch \
    file://armbian/0028-iio-adc-sun4i-gpadc-iio-add-support-for-A80-thermal-.patch \
    file://armbian/0029-iio-adc-sun4i-gpadc-iio-add-support-for-A64-thermal-.patch \
    file://armbian/0030-arm64-dts-allwinner-h5-add-support-for-the-thermal-s.patch \
    file://armbian/0031-arm64-dts-allwinner-h5-add-termal-zone-to-H5.patch \
    file://armbian/0032-arm-dts-sun9i-a80-add-support-for-the-thermal-sensor.patch \
    file://armbian/0033-arm-dts-sun9i-a80-add-thermal-zone-to-A80.patch \
    file://armbian/0034-dts-a64-ths.patch \
    file://armbian/0035-clk-sunxi-ng-add-mux-and-pll-notifiers-for-A64-CPU-c.patch \
    file://armbian/0036-sun4i-gpadc-iio-ignore-zero-samples-to-avoid-force-p.patch \
    file://armbian/0037-a64-dvfs-wip.patch \
    file://armbian/0038-ARM-dts-add-gpu-node-to-exynos4.patch \
    file://armbian/0039-dt-bindings-add-switch-delay-property-for-mali-utgar.patch \
    file://armbian/0042-drm-lima-add-lima-uapi-header.patch \
    file://armbian/0043-drm-lima-add-mali-4xx-GPU-hardware-regs.patch \
    file://armbian/0044-drm-lima-add-lima-core-driver.patch \
    file://armbian/0045-drm-lima-add-GPU-device-functions.patch \
    file://armbian/0046-drm-lima-add-PMU-related-functions.patch \
    file://armbian/0047-drm-lima-add-L2-cache-functions.patch \
    file://armbian/0048-drm-lima-add-GP-related-functions.patch \
    file://armbian/0049-drm-lima-add-PP-related-functions.patch \
    file://armbian/0050-drm-lima-add-MMU-related-functions.patch \
    file://armbian/0051-drm-lima-add-BCAST-related-function.patch \
    file://armbian/0052-drm-lima-add-DLBU-related-functions.patch \
    file://armbian/0053-drm-lima-add-GPU-virtual-memory-space-handing.patch \
    file://armbian/0054-drm-lima-add-TTM-subsystem-functions.patch \
    file://armbian/0055-drm-lima-add-buffer-object-functions.patch \
    file://armbian/0056-drm-lima-add-GEM-related-functions.patch \
    file://armbian/0057-drm-lima-add-GEM-Prime-related-functions.patch \
    file://armbian/0058-drm-lima-add-GPU-schedule-using-DRM_SCHED.patch \
    file://armbian/0059-drm-lima-add-context-related-functions.patch \
    file://armbian/0060-drm-lima-add-makefile-and-kconfig.patch \
    file://armbian/0061-drm-lima-use-SPDX-identifiers-and-change-copyright.patch \
    file://armbian/0062-drm-lima-lima_reg.h-use-BIT.patch \
    file://armbian/0063-drm-lima-add-IRQF_SHARED-for-GP-irq.patch \
    file://armbian/0064-drm-lima-Kconfig-only-depend-on-ARM-or-ARM64.patch \
    file://armbian/0065-drm-lima-add-comments-for-lima_reg.h.patch \
    file://armbian/0066-drm-lima-wait-bo-fence-before-bo-close.patch \
    file://armbian/0067-drm-lima-refine-lima_gem_sync_bo.patch \
    file://armbian/0068-drm-lima-vm-will-be-freed-when-lima_sched_free_job.patch \
    file://armbian/0069-drm-lima-vm-alloc-buffer-with-multi-page-table.patch \
    file://armbian/0070-drm-lima-clear-vm-page-table-when-alloc.patch \
    file://armbian/0071-drm-lima-update-SPDX-header-to-match-kernel-rules.patch \
    file://armbian/0072-drm-fourcc-add-ARM-tiled-format-modifier.patch \
    file://armbian/0073-drm-lima-add-DRM_LIMA_GEM_MOD-ioctl.patch \
    file://armbian/0074-a64-ccu-enable-LDOs-for-pll-mipi-and-add-min-max-rat.patch \
    file://armbian/0075-sopine-baseboard-enable-HS200-for-eMMC.patch \
    file://armbian/0076-drm-lima-remove-depend-on-ARM-arch.patch \
    file://armbian/0077-drm-lima-port-to-4.18-kernel.patch \
    file://armbian/0078-drm-lima-user-can-choose-not-to-use-dlbu-on-mali450.patch \
    file://armbian/0080-rtl8723bs-disable-error-message-about-failure-to-all.patch \
    file://armbian/0083-clk-sunxi-ng-Add-maximum-rate-constraint-to-NM-PLLs.patch \
    file://armbian/0084-clk-sunxi-ng-h3-h5-Add-max.-rate-constraint-to-pll-v.patch \
    file://armbian/0087-drm-sun4i-tcon-Pass-drm_encoder-into-sun4i_tcon0_mod.patch \
    file://armbian/0088-drm-sun4i-tcon-Rename-Dithering-related-register-mac.patch \
    file://armbian/0089-drm-sun4i-tcon-Add-dithering-support-for-RGB565-RGB6.patch \
    file://armbian/0090-drm-sun4i-tcon-prevent-tcon-panel-dereference-if-nul.patch \
    file://armbian/0091-clk-sunxi-ng-a64-Add-minimal-rate-for-video-PLLs.patch \
    file://armbian/0092-clk-sunxi-ng-a64-Add-max.-rate-constraint-to-video-P.patch \
    file://armbian/0093-dt-bindings-display-Add-compatible-for-A64-DE2-displ.patch \
    file://armbian/0094-drm-sun4i-Add-support-for-A64-mixers.patch \
    file://armbian/0095-drm-sun4i-Add-support-for-A64-display-engine.patch \
    file://armbian/0096-dt-bindings-display-Add-compatible-for-A64-HDMI.patch \
    file://armbian/0097-dt-bindings-clock-sun50i-a64-ccu-Add-PLL_VIDEO0-macr.patch \
    file://armbian/0098-arm64-dts-allwinner-a64-Add-display-pipeline.patch \
    file://armbian/0099-dt-bindings-sun4i-drm-add-HDMI-VCC-supply-property-f.patch \
    file://armbian/0100-drm-sun4i-Add-support-for-HDMI-voltage-regulator.patch \
    file://armbian/0101-arm64-dts-allwinner-a64-Enable-HDMI-output-on-A64-bo.patch \
    file://armbian/0102-dt-bindings-power-supply-axp20x-add-AXP813-AC-power-.patch \
    file://armbian/0103-dt-bindings-power-supply-axp20x-add-AXP803-power-bin.patch \
    file://armbian/0104-dt-bindings-gpio-gpio-axp209-add-AXP803-GPIO-binding.patch \
    file://armbian/0105-dt-bindings-iio-adc-add-AXP803-ADC-bindings.patch \
    file://armbian/0106-ARM-dts-axp81x-add-AC-power-supply-subnode.patch \
    file://armbian/0107-arm64-dts-allwinner-axp803-add-AC-and-battery-power-.patch \
    file://armbian/0108-arm64-dts-allwinner-a64-sopine-baseboard-enable-powe.patch \
    file://armbian/0109-arm64-dts-allwinner-a64-pinebook-enable-power-suppli.patch \
    file://armbian/0110-power-supply-add-AC-power-supply-driver-for-AXP813.patch \
    file://armbian/0111-mfd-axp20x-Add-AC-power-supply-cell-for-AXP813.patch \
    file://armbian/0113-ASoC-sun4i-i2s-move-code-from-startup-shutdown-hooks.patch \
    file://armbian/0114-ASoC-sun4i-i2s-Add-compatibility-with-A64-codec-I2S.patch \
    file://armbian/0115-ASoC-sun8i-codec-Don-t-hardcode-BCLK-LRCK-ratio.patch \
    file://armbian/0116-ASoC-sun8i-codec-analog-split-regmap-code-into-separ.patch \
    file://armbian/0117-ASoC-dt-binding-Add-bindings-for-Allwinner-A64-codec.patch \
    file://armbian/0118-ASoC-sunxi-Add-new-driver-for-Allwinner-A64-codec-s-.patch \
    file://armbian/0119-ASoC-sunxi-allow-the-sun8i-codec-driver-to-be-built-.patch \
    file://armbian/0120-arm64-dts-allwinner-a64-add-nodes-necessary-for-anal.patch \
    file://armbian/0121-arm64-dts-allwinner-a64-enable-sound-on-Pine64-and-S.patch \
    file://armbian/0122-arm64-dts-allwinner-a64-enable-sound-on-Pinebook.patch \
    file://armbian/0123-drm-sun4i-tcon-enable-dithering-on-tcon0-is-there-s-.patch \
    file://armbian/0124-drm-lima-Fix-Lima-to-work-with-drm-scheduler-changes.patch \
    file://armbian/0125-drm-lima-Fix-lima-cache-creation.patch \
    file://armbian/0126-drm-bridge-move-ANA78xx-driver-to-analogix-subdirect.patch \
    file://armbian/0127-drm-bridge-split-some-definitions-of-ANX78xx-to-dedi.patch \
    file://armbian/0128-drm-bridge-extract-some-Analogix-I2C-DP-common-code.patch \
    file://armbian/0129-dt-bindings-Add-ANX6345-DP-eDP-transmitter-binding.patch \
    file://armbian/0130-drm-bridge-Add-Analogix-anx6345-support.patch \
    file://armbian/0131-arm64-allwinner-a64-add-pinmux-for-RGB666-LCD.patch \
    file://armbian/0132-arm64-allwinner-a64-enable-ANX6345-bridge-on-Pineboo.patch \
    file://armbian/0133-arm64-allwinner-a64-enable-ANX6345-bridge-on-TERES-I.patch \
    file://armbian/0134-drm-sun4i-rgb-Add-5-tolerance-to-dot-clock-frequency.patch \
    file://armbian/0135-clk-sunxi-ng-enable-so-said-LDOs-for-A64-SoC-s-pll-m.patch \
    file://armbian/0136-hdmi-audio-fixup.patch \
    file://armbian/0137-Pinebook-HDMI-audio.patch \
    file://armbian/0138-ASoC-sunxi-rename-SND_SUNXI_ADDA_PR_REGMAP-to-SND_SU.patch \
    file://armbian/0139-Bluetooth-Add-new-quirk-for-broken-local-ext-feature.patch \
    file://armbian/0140-Bluetooth-hci_h5-Add-support-for-reset-GPIO.patch \
    file://armbian/0141-dt-bindings-net-bluetooth-Add-rtl8723bs-bluetooth.patch \
    file://armbian/0142-Bluetooth-hci_h5-Add-support-for-binding-RTL8723BS-w.patch \
    file://armbian/0143-Bluetooth-btrtl-add-support-for-the-RTL8723CS.patch \
    file://armbian/0144-arm64-allwinner-a64-enable-Bluetooth-On-Pinebook.patch \
    file://armbian/0145-arm64-allwinner-a64-enable-Bluetooth-On-Pine64.patch \
    file://armbian/0146-arm64-allwinner-a64-enable-Bluetooth-On-SoPine-baseb.patch \
    file://armbian/0147-si2168-fix-cmd-timeout.patch \
    file://armbian/ARM-dts-sun7i-Disable-OOB-IRQ-for-brcm-wifi-on-Banana-Pi-M1-plus.patch \
    file://armbian/ARM-dts-sun7i-Disable-OOB-IRQ-for-brcm-wifi-on-Cubietruck-and-Banana-Pro.patch \
    file://armbian/RFC-drivers-ata-ahci_sunxi-Increased-SATA-AHCI-DMA-TX-RX-FIFOs.patch \
    file://armbian/Revert_BT_HCIUART_RTL_ACPI_dependency.patch \
    file://armbian/add-BergMicro-SPI-flashes.patch \
    file://armbian/add-orangepi-zeroplus2.patch \
    file://armbian/board-a64-v3-01-19-arm64-dts-allwinner-a64-Add-L2-cache-nodes.patch \
    file://armbian/board-a64-v3-02-19-arm64-dts-allwinner-a64-Add-Pine64-LTS-device-tree-file.patch \
    file://armbian/board-a64-v3-13-19-arm64-dts-allwinner-a64-Olinuxino-fix-DRAM-voltage.patch \
    file://armbian/board-a64-v3-14-19-arm64-dts-allwinner-a64-Olinuxino-add-Ethernet-nodes.patch \
    file://armbian/board-a64-v3-15-19-arm64-dts-allwinner-a64-Olinuxino-enable-USB.patch \
    file://armbian/board-a64-v3-16-19-arm64-dts-allwinner-a64-NanoPi-A64-Fix-DCDC1-voltage.patch \
    file://armbian/board-a64-v3-17-19-arm64-dts-allwinner-a64-NanoPi-A64-Add-Ethernet.patch \
    file://armbian/board-a64-v3-18-19-arm64-dts-allwinner-a64-NanoPi-A64-Add-Wifi-chip.patch \
    file://armbian/board-a64-v3-19-19-arm64-dts-allwinner-a64-NanoPi-A64-Add-blue-status-LED.patch \
    file://armbian/board-a83t-3-5-clk-sunxi-ng-r40-Add-max.-rate-constraint-to-video-PLLs.patch \
    file://armbian/board-a83t-4-5-clk-sunxi-ng-nkmp-Add-constraint-for-maximum-rate.patch \
    file://armbian/board-a83t-5-5-clk-sunxi-ng-a83t-Add-max.-rate-constraint-to-video-PLLs.patch \
    file://armbian/board-a83t-add-one-more-freq-step-1.6ghz.patch \
    file://armbian/board-a83t-v7-1-4-ARM-dts-sun8i-a83t-Add-the-cir-pin-for-the-A83T.patch \
    file://armbian/board-a83t-v7-2-4-ARM-dts-sun8i-a83t-Add-support-for-the-cir-interface.patch \
    file://armbian/board-a83t-v7-3-4-ARM-dts-sun8i-a83t-bananapi-m3-Enable-IR-controller.patch \
    file://armbian/board-a83t-v7-4-4-ARM-dts-sun8i-h3-h5-ir-register-size-should-be-the-whole-memory-block.patch \
    file://armbian/board-cubieboard-cubietruck-green-LED-mmc0.patch \
    file://armbian/board-cubietruck-enable-uart2.patch \
    file://armbian/board-cubietruckplus-enable-hdmi.patch \
    file://armbian/board-h2plus-nanopi-duo-add-device.patch \
    file://armbian/board-h2plus-sunvell-r69-add-device.patch \
    file://armbian/board-h3-add-rtc-osc32k-out.patch \
    file://armbian/board-h3-nanopi-neo-core-add-emmc.patch \
    file://armbian/board-h5-add-0000-nanopi-k1plus.patch \
    file://armbian/board-h5-add-0001-nanopi-neo-core2.patch \
    file://armbian/board-h5-add-0002-nanopi-neo2-v1.1.patch \
    file://armbian/board-h5-add-0003-nanopi-m1-plus2.patch \
    file://armbian/board-h5-orangepi-pc2-add-spi-flash.patch \
    file://armbian/board-h5-orangepi-zero-plus-add-regulator.patch \
    file://armbian/board-h5-orangepi-zero-plus2-onboard-led.patch \
    file://armbian/board-h6-add-orangepi-one-plus-and-lite2.patch \
    file://armbian/board-h6-add-rtc-osc32k-out.patch \
    file://armbian/board-h6-clock-higher.patch \
    file://armbian/board-nanopi-adjust-defaults.patch \
    file://armbian/board-nanopiair-h3-camera-wifi-bluetooth-otg.patch \
    file://0001-Enable-uart3-for-NanoPi-Neo-Air-used-by-BT.patch \
    file://armbian/board-olinuxino-A64-add-eMMC.patch \
    file://armbian/board-orangepizeroplus2-missing-otg-bits.patch \
    file://armbian/board-pine-h6-pine-h6-0008-arm64-allwinner-h6-add-missing-mmc-pins.patch \
    file://armbian/board-pine-h6-pine-h6-0009-arm64-allwinner-h6-enable-MMC0-2-on-Pine-H64.patch \
    file://armbian/board-pine-h6-pine-h6-0018-arm64-allwinner-h6-enable-AXP805-PMIC-on-Pine-H64.patch \
    file://armbian/board-pine-h6-pine-h6-0019-arm64-allwinner-h6-add-PCF8563-RTC-on-Pine-H64-board.patch \
    file://armbian/board-pine-h6-pine-h6-0020-phy-allwinner-add-phy-driver-for-USB3-PHY-on-Allwinn.patch \
    file://armbian/board-pine-h6-pine-h6-0021-dt-bindings-usb-add-binding-for-the-DWC3-controller-.patch \
    file://armbian/board-pine-h6-pine-h6-0023-arm64-allwinner-h6-add-USB3-device-nodes.patch \
    file://armbian/board-pine-h6-pine-h6-0024-arm64-allwinner-h6-enable-USB3-port-on-Pine-H64.patch \
    file://armbian/board-pine-h6-pine-h6-0026-phy-sun4i-usb-add-support-for-H6-USB2-PHY.patch \
    file://armbian/board-pine-h6-pine-h6-0027-arm64-allwinner-h6-add-USB2-related-device-nodes.patch \
    file://armbian/board-pine-h6-pine-h6-0028-arm64-allwinner-h6-enable-USB2-on-Pine-H64.patch \
    file://armbian/board-pine-h6-pine-h6-0029-arm64-allwinner-h6-add-basical-DVFS-support.patch \
    file://armbian/board-pine-h6-pine-h6-0030-arm64-allwinner-h6-add-CPU-regulator-for-Pine-H64.patch \
    file://armbian/board-pine-h6-pine-h6-0033-net-stmmac-sun8i-add-support-for-Allwinner-H6-EMAC.patch \
    file://armbian/board-pine-h6-pine-h6-0034-arm64-allwinner-h6-add-EMAC-device-nodes.patch \
    file://armbian/board-pine-h6-pine-h6-0035-arm64-allwinner-h6-add-support-for-the-Ethernet-on-P.patch \
    file://armbian/board-pine64-add-spi-flash.patch \
    file://armbian/board-r40-sata-support.patch \
    file://armbian/camera-add-the-H3-H5-CSI-controller.patch \
    file://armbian/fix-A64-mmc2-remove-PC1-pin.patch \
    file://armbian/fix-bananam2ultra-missing-clk-out-a.patch \
    file://armbian/fix-bananapi-m2-plus-wifi.patch \
    file://armbian/fix-bananapi-m2-ultra-wifi.patch \
    file://armbian/general-add-H6-GPIO-disable_strict_mode.patch \
    file://armbian/general-add-H6-I2Cs.patch \
    file://armbian/general-add-H6-UARTs.patch \
    file://armbian/general-add-configfs-overlay.patch \
    file://armbian/general-add-h3-mixer1.patch \
    file://armbian/general-add-i2s-DT-pins.patch \
    file://armbian/general-add-nand-H27UBG8T2BTR.patch \
    file://armbian/general-add-overlay-compilation-support.patch \
    file://armbian/general-arm64-add-proc-cpuinfo-entries.patch \
    file://armbian/general-armbian-boot-logo-on-screen-center.patch \
    file://armbian/general-aufs4.19-20181029.patch \
    file://armbian/general-axp20x-sysfs-interface.patch \
    file://armbian/general-enable-allwinner-SoCs-SID-support.patch \
    file://armbian/general-enable-kernel-dtbs-symbol-generation.patch \
    file://armbian/general-increasing_DMA_block_memory_allocation_to_2048.patch \
    file://armbian/general-packaging-4.17-next.patch \
    file://armbian/general-provoke-the-early-load-of-sun8i-codec.patch \
    file://armbian/general-spidev-remove-warnings.patch \
    file://armbian/general-sunxi-overlays.patch \
    file://armbian/general-sunxi-rtc-clocksource.patch \
    file://armbian/mmc-sunxi-Fix-eMMC-usage-on-H5-boards.patch \
    file://armbian/nand-disable-badblock-check-for-migration.patch \
    file://armbian/rename_gadget_serial_console_manufacturer.patch \
    file://armbian/spi6-sck-high-too-early.patch \
    file://armbian/sunxi-h5-add-gpio-regulator-overclock.patch \
    file://armbian/sunxi_neo-plus2_Support_AP6212_AP6212A_bluetooth.patch \
    file://armbian/ths-29-add-correct-h5-thermal-zone.patch \
    file://armbian/update-nanopi-neo-plus2-enable-regulator-fix-leds.patch \
    file://armbian/v3-1-2-si2168-Set-TS-clock-mode-and-frequency.patch \
    file://armbian/v3-2-2-dvbsky-Add-support-for-MyGica-T230C-v2.patch \
    file://armbian/wifi-3001-add-realtek-8189es-kconfig-makefile.patch \
    file://armbian/wifi-3002-add-realtek-8189es.patch \
    file://armbian/wifi-4001-add-realtek-8723cs-kconfig-makefile.patch \
    file://armbian/wifi-4002-add-realtek-8723cs.patch \
    file://armbian/wifi-8723bs-AP-bugfix.patch \
    file://armbian/wifi-add-realtek-8189fs.patch \
    file://armbian/wifi-add-xradio.patch \
    file://armbian/wifi-bt-bananapi-m2-plus.patch \
    file://armbian/wifi-orangepi-pc-plus-pwrseq.patch \
    file://armbian/wifi-orangepi-prime.patch \
    file://armbian/wifi-orangepi-zero-fix-xradio-interrupt.patch \
    file://armbian/xxx-0001-network-audio-orangepiwin-dts.patch \
    file://armbian/xxx-0002-enable_usb_uart1-orangepiwin-dts.patch \
    file://armbian/xxx-a64-olinuxino-eth.patch \
    file://armbian/xxx-add-nanopi-r1-and-duo2.patch \
    file://armbian/xxx-add-zeropi.patch \
    file://armbian/xxx-nanopik1plus.patch \
    file://armbian/xxx-nanopineo2v1.0-dvfs.patch \
    file://armbian/xxx-olinuxino-battery-audio.patch \
    file://armbian/xxx-opi-win-bluetooth.patch \
    file://armbian/xxx-orangepi2-plus-regulator.patch \
    file://armbian/xxx-orangepiprime-addregulator.patch \
    file://armbian/xxx-orangepizero-plus2-default-regulator.patch \
    file://armbian/xxx-pinebook-revert-pwm-polairity-TEMP-WORKAROUND.patch \
    file://armbian/xxx-teres-add-battery-hdmi-bits.patch \
    file://defconfig \
    "
