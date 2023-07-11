.data
    number: .word 1234567890 

.text
.globl main
main:
    la $a0,number         
    li $a1,5           

    jal csl             

    move $s0,$v0       

csl:
    
    addi $sp,$sp,-4   
    sw $ra,0($sp)      

    
    move $t0,$a0
    
    move $t1,$a1

    sllv $t2,$t0,$t1  
    sub $t3,$zero,$t1  
    addi $t3,$t3,32   
    srlv $t4,$t0,$t3  
    or $t0,$t2,$t4    

    move $v0,$t0       

    lw $ra,0($sp)      
    addi $sp,$sp,4    

    jr $ra              
