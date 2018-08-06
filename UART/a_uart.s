.data
	movia r23, 0x30000 #Define o endereço inicial de leitura.
	add r22, r0, r0
	addi r9, r0, 1

.text

loop:	
	ldb r10, 0x0001 #Endereço da memória mapeada da confirmação
	beq r10, r9, grava
	br loop


grava:		
	ldb r8, 0x0000 #Endereço da memória mapeada dos dados
	stb r8, 0(r23)
	addi r23, r23, 4
	br loop
