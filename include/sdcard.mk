
.PHONY: sdcardqt5

sdcardqt5: 
	@if [ ! -f "$(fslimageqt5)" ] ; then \
	   $(call printferr,"fsl_image_qt5 not exist, please make buildqt5 first!! \n") \
	   exit 1; \
	 fi
	@printf $(YELLOW)"%s\n" "Please select SD card disk to write fsl-image-qt5 image. (selections: $(shell lsblk -d | sed -e '1d' | awk '{print $$1}' | sort -d) )"; \
	 printf $(NC); \
	 read disk; \
	 echo "Select '$$disk'. "; \
	 if [ ! -b "/dev/$${disk}" ] ; then \
	   $(call printferr,"/dev/$${disk} not exist!!") \
	   exit 1; \
	 fi ; \
	 echo "Are you sure to write image to /dev/$${disk}? (y/n) "; \
	 read ans; \
	 if [ "$$ans" == "y" ] ; then \
	   echo "dd if=$(fslimageqt5) of=/dev/$$disk bs=1M status=progress;"; \
	   echo "sync; sync;"; \
	   echo "Write image done!!"; \
	 else \
	   echo bye!!; \
	 fi

