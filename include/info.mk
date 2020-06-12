
.PHONY: info
info: 
	@printf "%-20s: %s\n" "machine" "$(yoctomachine)"
	@printf "%-20s: %s\n" "manifest" "$(yoctomanifest)"
	@printf "%-20s: %s\n" "build folder" "$(yoctodir)/$(yoctobuilddir)"
ifdef YOCTO_WORK_DIR_CHK
	@printf "%-20s: %s\n" "YOCTO_WORK_DIR" "$(yoctoworkdir)" 
	@printf "%-20s: %s\n" "YOCTO_WORK_DIR(old)" "$(yoctodir)/$(yoctobuilddir)" 
else
	@printf "%-20s: %s\n" "YOCTO_WORK_DIR" "$(yoctodir)/$(yoctobuilddir)" 
endif
	@printf "%-20s: %s\n" "download folder" "$(yoctoworkdir)/downloads"
	@printf "%-20s: %s\n" "deploy folder" "$(yoctoworkdir)/tmp/deploy"
	@printf "%-20s: %s\n" "images folder" "$(yoctoworkdir)/tmp/deploy/images/$(yoctomachine)"
	@printf "%-20s: %s\n" "fsl-image-qt5" "$(fslimageqt5)"
	@echo "$(shell realpath $(yoctoworkdir)/tmp/deploy/images/$(yoctomachine)/fsl-image-qt5-$(yoctomachine).sdcard)"


