
# Tang Nano Example

Repository: <https://github.com/E4tHam/tangnano_example>

---

## About

The Tang Nano is the famous / infamous $5 FPGA ([learn More Here](https://tangnano.sipeed.com/en/)). This repository is a simple exmple of how to get started with the Tang Nano with FuseSoC.

This repository is an implementation of a sequential adder. ![Circuit](tangnano/circuit.jpeg)

## Usage

```bash
make load       # load the bitstream to the Tang Nano
make tinyfpga   # generate the bitstream

make sim        # simulate the testbench
make view       # open dump in gtkwave

make clean      # remove build files
```

## Requirements

* [Apicula](https://github.com/YosysHQ/apicula)
* [FuseSoC](https://github.com/olofk/fusesoc)

Note: As of 9/12/21, [Edalize](https://github.com/olofk/edalize/) has a bug with the Apicula toolchain. To fix it, after installing FuseSoC, manually add [the apicula-makefile.j2 template](https://github.com/infphyny/edalize-1/blob/master/edalize/templates/apicula/apicula-makefile.j2) to `${Edalize_Install_Dir}/templates/apicula/apicula-makefile.j2`.
