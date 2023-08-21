
CC      = g++
CPU_NUM = 0
C_DEFINES =

ifeq ($(strip $(PACKAGE)),)
  $(error "No PACKAGE provided for dpi.so generation")
endif

PKGS_DIR     	= ${STEM}/testbench/Pkgs
PKG_DEF_DIR 	= ${PKGS_DIR}/${PACKAGE}
PACKAGE_DIR   = ${PKG_DEF_DIR}

DRIVER_DIR    = ${STEM}/firmware/inc/driver

CFLAGS += -I $(VCS_HOME)/include -I${PKG_DEF_DIR}/include -I${DRIVER_DIR}

# Get Sources for the Package
include $(PACKAGE_DIR)/Makefile.imk

$(info CFILES: ${CFILES})

# Include the Test specific information
-include Makefile.$(PACKAGE).drv.imk

CFLAGS += -I$(PACKAGE_DIR)      
CFLAGS += -I.

ifeq ($(EXCFILES),)
  CFLAGS += -D_DEFAULT_C
endif
CFLAGS += $(C_DEFINES)

ALL_SRC_FILES = $(CFILES) $(EXCFILES)
DEP_FILE      = $(PACKAGE).d
SO_FILE       = $(PACKAGE).so

$(SO_FILE): $(ALL_SRC_FILES) $(DEP_FILE)
	$(CC) -g -shared -Bsymbolic $(DEFINES) $(CFLAGS) -o $(SO_FILE) $(ALL_SRC_FILES) -fPIC \

# Rule to generate a dep file by using the C preprocessor
# See "man g++" for details on the -MM, -MP and -MT options
$(DEP_FILE): $(ALL_SRC_FILES) 
	$(CC) $(DEFINES) $(CFLAGS) -MM -MP -MT '$(DEP_FILE)' $(ALL_SRC_FILES) 

# Include the generated header file dependency
-include $(DEP_FILE)

clean:
	rm $(DEP_FILE) $(SO_FILE)
