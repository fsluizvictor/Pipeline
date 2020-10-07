main:

add $t2, $t0, $t1
sub $t3, $t1, $t0
sw $t0, 0($t1)
lw $t4, 0($t1)
slt $t5, $t0, $t1
and $t6, $t0, $t1
or $t7, $t0, $t1
sw $t2, 0($t1) 
beq $t0, $t1, main

add $t2,$t0,$t1
add $t3,$t2,$t2
add $t4,$t2,$t1

lw $t4, 0($t1)
add $t7,$t4,$t0



j main