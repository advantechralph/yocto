currdir=$(shell pwd)
builddir=${currdir}/build
downloadsdir=$(shell cd ~; realpath -m ./downloads)
yoctodir=$(builddir)/yocto
yoctourl=https://github.com/advantechralph/yocto.git
yoctobranch=project/tpc71wn10pa
yoctomanifest=default.xml
yoctomachine=imx6dltpc71wn10pa
yoctobuilddir=build.$(yoctomachine)
yoctodistro=x11
SHELL=/bin/bash
export YOCTO_DL_DIR="$(YOCTO_WORK_DIR)/downloads"
export YOCTO_TMPDIR="$(YOCTO_WORK_DIR)/tmp"
export YOCTO_SSTATE_DIR="$(YOCTO_WORK_DIR)/sstate-cache"
YOCTO_WORK_DIR_CHK=$(shell if [ -f "$(yoctodir)/$(yoctobuilddir)/conf/extra-local.conf" ] ; then source $(yoctodir)/$(yoctobuilddir)/conf/extra-local.conf; echo $$DL_DIR| sed -e 's/\/downloads$$//'; fi)
ifneq ($(YOCTO_WORK_DIR_CHK),)
yoctoworkdir=$(YOCTO_WORK_DIR_CHK)
else
yoctoworkdir=$(yoctodir)/$(yoctobuilddir)
endif
fslimageqt5=$(shell realpath -m $(yoctoworkdir)/tmp/deploy/images/$(yoctomachine)/fsl-image-qt5-$(yoctomachine).sdcard)

