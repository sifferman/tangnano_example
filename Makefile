# ======================================================= #

# Bitstream path
FS	= build/e4tham_tangnano_example_1.0.0/tangnano-apicula/e4tham_tangnano_example_1.0.0.fs

# VVP Dump
DUMP	= build/e4tham_tangnano_example_1.0.0/sim-icarus/dump.fst

# ======================================================= #
# API

.PHONY: load tangnano sim view init clean

# ======================================================= #
# Synth targets

load: fusesoc.conf ${FS}
	sudo openFPGALoader -m -b tangnano ${FS}

tangnano: fusesoc.conf ${FS}

# ======================================================= #
# Sim targets

sim: fusesoc.conf
	fusesoc run --target sim e4tham:tangnano:example

view: fusesoc.conf ${DUMP}
	gtkwave ${DUMP} > /dev/null 2>&1 &

# ======================================================= #
# Misc targets

init: fusesoc.conf

clean:
	rm -rf build fusesoc.conf

# ======================================================= #
# Files

fusesoc.conf:
	fusesoc library add adder . --sync-type=local

${FS}: $(shell find tangnano -type f) fusesoc.conf $(shell find rtl -type f) adder.core
	fusesoc run --target tangnano e4tham:tangnano:example

${DUMP}: $(shell find sim -type f) fusesoc.conf $(shell find rtl -type f) adder.core
	fusesoc run --target sim e4tham:tangnano:example

# ======================================================= #
