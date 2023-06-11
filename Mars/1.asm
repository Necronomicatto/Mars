.data
	N1: .word 7
	N2: .word 12
	N3: .word 17
	N4: .word 0
	
.text
.globl main
main:
	lw $t0,N1
	lw $t1,N2
	lw $t2,N3
	
	sub $t3,$t0,$t1
	add $t4,$t3,$t2
	
	sw $t4,N4
	
	li $v0,1
	lw $a0,N4
	syscall
	
	li $v0,10
	syscall