BITCOIN_MOD_DIR := $(USERMOD_DIR)


# Add all C files to SRC_USERMOD.
SRC_USERMOD += $(BITCOIN_MOD_DIR)/secp256k1/src/utility/secp256k1.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/libsecp256k1.c

# We can add our module folder to include paths if needed
# Extra module flags.
CFLAGS_USERMOD += -I$(BITCOIN_MOD_DIR) -I$(BITCOIN_MOD_DIR)/secp256k1/src -I$(BITCOIN_MOD_DIR)/secp256k1/src/utility  

override CFLAGS_EXTRA += -DMODULE_SECP256K1_ENABLED=1