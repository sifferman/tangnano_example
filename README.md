
# Tang Nano Example

Repository: <https://github.com/E4tHam/tangnano_example>

---

## About

The Tang Nano is the famous / infamous $5 FPGA ([learn more here](https://tangnano.sipeed.com/en/)). This repository is a simple example of how to get started with the Tang Nano with FuseSoC.

This repository is an implementation of a sequential adder. ![Circuit](tangnano/circuit.jpg)

## Usage

```bash
make load       # load the bitstream to the Tang Nano
make tangnano   # generate the bitstream

make sim        # simulate the testbench
make view       # open dump in gtkwave

make clean      # remove build files
```

## Requirements

* [FuseSoC](https://fusesoc.readthedocs.io/en/stable/user/installation.html)
* [Icarus Verilog](https://iverilog.fandom.com/wiki/Installation_Guide)
* [GTKWave](http://gtkwave.sourceforge.net/)
* [Apicula](https://github.com/YosysHQ/apicula#getting-started)
* [yosys](https://github.com/yosyshq/yosys#setup)
* [nextpnr-gowin](https://github.com/YosysHQ/nextpnr#nextpnr-gowin)
* [openFPGALoader](https://github.com/trabucayre/openFPGALoader/blob/master/INSTALL.md#installing-openfpgaloader)
