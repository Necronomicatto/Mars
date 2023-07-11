.data
	vector: .word 0:10
	quantitas: .word 10
	depaloMSG: .ascii "Encontrado na posição "
	nonDepaloMSG: .asciiz "Número não encontrado\n"
	
.text
.globl main
main:
	la $t0,vector
	lw $t1,quantitas
	
	li $t2,0
	
inputLoop:
	li $v0,5
	syscall
	sw $v0,0($t0)
	
	addi $t0,$t0,4
	addi $t2,$t2,1
	
	blt $t2,$t1,inputLoop
	
	li $v0,5
	syscall
	move $t3,$v0
	
	li $t4,-1
	li $t2,0
	
depaloLoop:
	lw $t5,0($t0)
	
	beq $t5,$t3,depalo
	
	addi $t0,$t0,4
	addi $t2,$t2,1
	
	blt $t2,$t1,depaloLoop
	
	j nonDepalo
	
depalo:
	move $t4,$t2
	
	li $v0,4
	la $a0,depaloMSG
	syscall
	
	move $a0,$t4
	li $v0,1
	syscall
	
	j exitum
	
nonDepalo:
	li $v0,4
	la $a0,nonDepaloMSG
	syscall
	
exitum:
	li $v0,10
	syscall
	
