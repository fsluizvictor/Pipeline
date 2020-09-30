main:
#t0 = 2
#t1 = 2
add $t2, $t0, $t1 # = 4
add $t3, $t2, $t2 # 8 Ex Hazard
add $t4, $t2, $t1 # = 6 Mem hazard

and $s0, $t3, $t4 # Ex hazard com t4 e mem hazard com t3
or  $t6, $t0, $t1

slt $t5, $t4, $t3 # Nao tem hazard

beq $t0, $t1, jump
nop
nop
nop

jump:
#stalls precisam ser geradas?
sw $t2, 0($s1)
sw $t3, 4($s1)
sw $t4, 8($s1)
sw $t5, 12($s1)

lw $s2, 4($s1)
lw $s3, 8($s1)
lw $s4, 12($s1)
j main
