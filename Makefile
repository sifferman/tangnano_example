# ======================================================= #

# Bitstream path
FS	= build/e4tham_tangnano_example_1.0.0/tangnano-apicula/e4tham_tangnano_example_1.0.0.fs

# VVP Dump
DUMP	= build/e4tham_tangnano_example_1.0.0/sim-icarus/dump.fst

# ======================================================= #
# Synth targets

load: init tinyfpga
	sudo openFPGALoader -m -b tinyfpga ${FS}

tinyfpga: init ${FS}

# ======================================================= #
# Sim targets

sim: init
	fusesoc run --target sim e4tham:tangnano:example

view: init ${DUMP}
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

${FS}: init $(shell find rtl -type f) $(shell find tangnano -type f)
	fusesoc run --target tangnano e4tham:tangnano:example

${DUMP}:
	fusesoc run --target sim e4tham:tangnano:example

# ======================================================= #
