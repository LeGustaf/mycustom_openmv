BITCOIN_MOD_DIR := $(USERMOD_DIR)


# Add all C files to SRC_USERMOD.

SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/memzero.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/rand.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/ripemd160.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/sha2.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/bignum.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/ecdsa.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/secp256k1.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/hmac.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/crypto/pbkdf2.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/hashlib.c
SRC_USERMOD += $(BITCOIN_MOD_DIR)/ecc.c

# We can add our module folder to include paths if needed
# Extra module flags.
CFLAGS_USERMOD += -I$(BITCOIN_MOD_DIR) -I$(BITCOIN_MOD_DIR)/crypto  

override CFLAGS_EXTRA += -DMODULE_ECC_ENABLED=1
override CFLAGS_EXTRA += -DMODULE_HASHLIB_ENABLED=1
