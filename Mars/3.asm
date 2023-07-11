.data
	vector: .word 11 7 5 14 13 8 9 2 18 4
	quantitas: .word 10
	novaLinea: .asciiz "\n"

	
.text
.globl main
main:
	la $t0,vector
	lw $t1,quantitas
	
	li $t2,0
	
loop:
	lw $t3,0($t0)
	li $t4,6
	
	ble $t3,$t4,saltus
	
	move $a0, $t3
	li $v0,1
	syscall
	
	li $v0,4
	la $a0,novaLinea
	syscall
	
saltus:
	addi $t0,$t0,4
	addi $t2,$t2,1
	
	blt $t2,$t1,loop
	
	li $v0,10
	syscall
	