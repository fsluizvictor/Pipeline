Start:
lw $2, 1($1)
lw $3, 2($1)
add $4, $2, $3
sw $4, 3($1)
add $6, $0, $0
TesteLoop: slt $8, $6, $4
beq $8, $0, ExitLoop
add $6, $6, $7
j TesteLoop
ExitLoop:
j Start



#a memória deve ser inicializada com as seguintes posições:
# 0006:0003
# 0007:0004

#Registradores devem ser inicializados com os seguintes valores:
# 0001:5    - Referência para leitura na memória 
# 0006:0    - indice do loop
# 0007:1    - incremento do loop

#Programa: 
#	Carregar os valores das memórias 0006 e 0007
#	Somar os valores, e guardar em 0008