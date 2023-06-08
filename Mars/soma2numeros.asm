.data

number: .word  300

.text
.globl main 

main: 

addi $v0,$zero, 5
syscall 
add $s0,$v0,$zero #A

addi $v0,$zero, 5
syscall

add $s1,$v0,$zero #B

add $a0,$s0,$s1	  #A+B

la $t0,number
lw $t1,0($t0)	  #Carrega o valor de number da memória

add $a0,$a0,$t1	  #A+B+NUMBER

addi $v0,$zero,1

syscall 
