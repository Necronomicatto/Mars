.data

vector: .word 0,1,2,3,4,5,6,7,8,9

.text

main:

addi $t0,$zero,0
addi $t1,$zero,10

la $s0,vector  #$s0 has the adress of the vector

loop:
slt $t2,$t0,$t1  #if ($t0>$t1) then 
beq $t2,$zero,endloop

lw $a0,0($s0)
addi $v0,$zero,1
syscall

addi $s0,$s0,4  #moves the adress to the next element of the vector
addi $t0,$t0,1
j loop

endloop: