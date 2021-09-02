NEW_MOD_DIR := $(USERMOD_DIR)

# Add all C files to SRC_USERMOD.

SRC_USERMOD += $(NEW_MOD_DIR)/NEW_MOD_DEPS/code1.c
SRC_USERMOD += $(NEW_MOD_DIR)/NEW_MOD_DEPS/code2.c
SRC_USERMOD += $(NEW_MOD_DIR)/newmodule.c

# We can add our module folder to include paths if needed
# Extra module flags.
CFLAGS_USERMOD += -I$(NEW_MOD_DIR) -I$(NEW_MOD_DIR)/NEW_MOD_DEPS

override CFLAGS_EXTRA += -DMODULE_NEW_ENABLED=1
