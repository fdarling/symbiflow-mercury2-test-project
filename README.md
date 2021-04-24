# MicroNova Mercury 2 / SymbiFlow example project

This is a test project for the MicroNova Mercury 2 development board using the [SymbiFlow](https://symbiflow.github.io/) open source toolchain instead of Xilinx Vivado.

* [Mercury 2 - Xilinx Artix-7 FPGA development board — MicroNova](https://www.micro-nova.com/mercury-2) (product page)
* [Resources - Mercury 2 — MicroNova](https://www.micro-nova.com/resources-mercury-2) (schematics, pin constraint file, etc.)
* [MicroNova Mercury 2 FPGA Development Board - CNC Wiki](https://www.cncwiki.org/index.php?title=MicroNova_Mercury_2_FPGA_Development_Board) (aggregated information)

I run these commands to generate a bitstream:

```
export INSTALL_DIR=~/apps/symbiflow
export FPGA_FAM="xc7"
export PATH="$INSTALL_DIR/$FPGA_FAM/install/bin:$PATH"
source "$INSTALL_DIR/$FPGA_FAM/conda/etc/profile.d/conda.sh"
conda activate $FPGA_FAM
make
```

And this command to flash the board:

```
./flash.sh
```

There are some customizations that may be needed for your system:

* change the `INSTALL_DIR` variable in the shell commands below to match your SymbiFlow location (in my case it's `~/apps/symbiflow`)
* change in `~/apps/mercury2_prog` in `flash.sh` to reflect where you've placed the [Mercury 2 Programmer Utility](https://www.micro-nova.com/mercury2-programmer)

This test project was based on [symbiflow-examples](https://github.com/SymbiFlow/symbiflow-examples), specifically the [counter_test](https://github.com/SymbiFlow/symbiflow-examples/tree/master/xc7/counter_test) project.
