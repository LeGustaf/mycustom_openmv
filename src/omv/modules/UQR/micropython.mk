UQR_MOD_DIR := $(USERMOD_DIR)

# Add all C files to SRC_USERMOD.

SRC_USERMOD += $(UQR_MOD_DIR)/qrcodegen.c
SRC_USERMOD += $(UQR_MOD_DIR)/moduqr.c

# We can add our module folder to include paths if needed
# Extra module flags.
CFLAGS_USERMOD += -I$(UQR_MOD_DIR) 

override CFLAGS_EXTRA += -DMODULE_UQR_ENABLED=1
