
.PHONY: sdcardqt5

sdcardqt5: 
	@printf "%s\n" "Please select SD card disk to write fsl-image-qt5 image. ($(shell lsblk -d | sed -e '1d' | awk '{print $$1}' | sort -d))"; \
	 read disk; \
	 echo "Select '$$disk'. "; \
	 echo "Are you sure to write image to /dev/$${disk}? (y/n) "; \
	 read ans; \
	 if [ "$$ans" == "y" ] ; then \
	   dd if=$(fslimageqt5) of=/dev/$$disk bs=1M status=progress; \
	   sync; sync; \
	   echo "Write image done!!"; \
	 else \
	   echo bye!!; \
	 fi


