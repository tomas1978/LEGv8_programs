//Set up base of memory address
	MOVZ	x7, #0x01
	LSL	x7, x7, #28

//Store two constant values in dynamic memory
	MOVZ	x1, #42
	STUR	x1, [x7, #0]
	MOVZ	x1, #24
	STUR	x1, [x7, #8]
	LDUR	x2, [x7, #0]
	LDUR	x3, [x7, #8]
