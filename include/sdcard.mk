
.PHONY: sdcardqt5

sdcardqt5: 
	@if [ ! -f "$(fslimageqt5)" ] ; then \
	   echo "Error: qt5 image not exist, please make buildqt5 first..."; \
	   exit 1; \
	 fi
	@printf "%s\n" "Please select SD card disk to write fsl-image-qt5 image. ($(shell lsblk -d | sed -e '1d' | awk '{print $$1}' | sort -d))"; \
	 read disk; \
	 echo "Select '$$disk'. "; \
	 echo "Are you sure to write image to /dev/$${disk}? (y/n) "; \
	 read ans; \
	 if [ "$$ans" == "y" ] ; then \
	   echo "dd if=$(fslimageqt5) of=/dev/$$disk bs=1M status=progress;"; \
	   echo "sync; sync;"; \
	   echo "Write image done!!"; \
	 else \
	   echo bye!!; \
	 fi

