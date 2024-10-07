Icarus SV Template
==================

This repo has basic scaffolding for an IcarusVerilog project.

Useful files
------------

- `src/dut.sv` contains the DUT module, `dut`; most of your changes should go here.
- `src/top.sv` is the test bench that instantiates `dut`.

Pre-reqs
--------

You should install icarus verilog, at minimum.  You also probably want gtkwave.

Commands
--------

Useful commands defined as make targets:

- `make simv` to compile
- `make run` to run your simulator
- `make gtkwave` to launch gtkwave

