	MOVZ	x0, #15		//number of terms in x0
	MOVZ	x1, #1		//Sum in x1
	MOVZ	x2, #1		//Counter, number of terms in x2
loop:
	ADDI	x2, x2, #1	//Increment counter by 1
	ADD	x1, x1, x2		//Add counter value to sum
	CMP	x2, x0			//Check if all terms are added
	B.NE	loop		//Go to loop if counter not equal to number of terms
