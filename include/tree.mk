
define mainfiletree

Build package file structure: 

  ├── build                              # Yocto project building folder
  ├── default.xml                        # xml manifest 
  ├── fsl-setup-release.sh
  ├── include                            # included makefiles
  ├── macro.mk                           # global parameters for makefile
  ├── Makefile                           # Makefile for make target
  ├── README-IMXBSP
  ├── setup-environment
  └── yocto.build.mk


After 'make prepare': 

  ├── build
  │   ├── bin                            # repo tool
  │   │   ├── docs
  │   │   ├── hooks
  │   │   ├── subcmds
  │   │   └── tests
  │   │       └── fixtures
  │   └── yocto                          # Yocto project folder
  │       ├── build.imx6dltpc71wn10pa    # Yocto build folder
  │       │   ├── cache
  │       │   ├── conf
  │       │   └── workdir 
  │       ├── sources                    # meta layers folder
  │       │   ├── base
  │       │   ├── meta-advantech
  │       │   ├── meta-browser
  │       │   ├── meta-fsl-arm
  │       │   ├── meta-fsl-arm-extra
  │       │   ├── meta-fsl-bsp-release
  │       │   ├── meta-fsl-demos
  │       │   ├── meta-openembedded
  │       │   ├── meta-qt5
  │       │   ├── meta-tpc71wn10pa
  │       │   └── poky
  │       └── tpc71wn10pa               # build package
  │           └── include
  ├── default.xml                   
  ├── fsl-setup-release.sh
  ├── include                       
  ├── macro.mk                      
  ├── Makefile                      
  ├── README-IMXBSP
  ├── setup-environment
  └── yocto.build.mk

endef 
export mainfiletree
.PHONY: tree
tree: 
	@echo "$${mainfiletree}"

