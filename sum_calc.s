//Set up base of memory address
	MOVZ	x7, #0x01
	LSL	x7, x7, #28

//Store the first 6 decimals of pi in memory
//starting at memory address x7=0x1000000
	MOVZ	x1, #1
	STUR	x1, [x7, #0]
	MOVZ	x1, #4
	STUR	x1, [x7, #8]
	MOVZ	x1, #1
	STUR	x1, [x7, #16]
	MOVZ	x1, #5
	STUR	x1, [x7, #24]
	MOVZ	x1, #9
	STUR	x1, [x7, #32]
	MOVZ	x1, #2
	STUR	x1, [x7, #40]

//sum calculation
	MOV	x2, xzr	//Reg x2 used for sum
	MOV	x3, xzr	//Reg x3 used as counter
	MOVZ	x4, #6	//x4=number of integers to add
	MOV	x5, x7	//x5 used as address of each number
loop_add:
	LDUR	x6, [x5]
	ADD	x2, x2, x6
	ADDI	x3, x3, #1	//increment counter
	CMP	x3, x4
	BL	loop_add