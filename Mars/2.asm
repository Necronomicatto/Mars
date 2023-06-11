.data
	N1: .word 0
	N2: .word 0
	N3: .word 0
	N4: .word 0
	
.text
.globl main
main:
	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,5
	syscall
	move $t1,$v0
	
	li $v0,5
	syscall
	move $t2,$v0
	
	sub $t3,$t0,$t1
	add $t4,$t3,$t2
	
	sw $t4,N4
	
	li $v0,1
	lw $a0,N4
	syscall
	
	li $v0,10
	syscall