.data
    str: .space 11      

.text
.globl main
main:

    li $v0,8           
    la $a0,str         
    li $a1,11          
    syscall             

    
    la $t0,str         

convert_loop:
    lb $t1,0($t0)      

    beqz $t1,end       

    lbu $t2,0($t0)     
    
    bltu $t2,97,skip  
    bgtu $t2,122,skip 

    sub $t2,$t2,32    

    sb $t2,0($t0)      

skip:
    addi $t0,$t0, 1    
    j convert_loop      

end:

    la $t0,str         

print_loop:
    lb $t1,0($t0)      

    li $v0,11          
    move $a0,$t1       
    syscall             

    addi $t0,$t0,1    
    j print_loop        

    
    li $v0,10          
    syscall             
