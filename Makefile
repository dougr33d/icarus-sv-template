RTL_FILES  := top.sv dut.sv
TOP_MODULE := top
SIMV       := simv
WAVES      := waves.fst
GTKWAVE    := $(shell which gtkwave)

.PHONY: run clean gtkwave
run: ${SIMV}
	./${SIMV} -fst +waves:${WAVES}

clean:
	rm -f ${SIMV} ${WAVES}

gtkwave:
	${GTKWAVE} ${WAVES}

${SIMV}: ${RTL_FILES}
	iverilog -g2012 -s ${TOP_MODULE} -o $@ $^
