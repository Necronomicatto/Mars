.data 

caractere: .asciiz "HEllO World"

.text 

la $a0,caractere
addi $v0,$zero,4

syscall
