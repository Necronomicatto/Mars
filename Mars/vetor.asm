.data

vetor: .word 0,0,0,0,0,0,0,0,0,0

.text

main:

addi $t0,$zero,0
addi $t1,$zero,10

la $s0,vetor	#$s0 contém o endereço do meu vetor

loop:
slt $t2,$t0,$t1    #if ($t0 < $t1) then $t2 = 1; else $t2 = 0
beq $t2,$zero,endloop

lw $a0,0($s0)
addi $v0,$zero,1
syscall   

addi $s0,$s0,4	 #mover o endereço para o próximo elemento do vetor
addi $t0,$t0,1
j loop

endloop:

