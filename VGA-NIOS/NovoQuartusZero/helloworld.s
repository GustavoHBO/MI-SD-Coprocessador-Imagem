.equ leds, 0x3010
.global _start 
_start: 
movi r4, 0b0000000000001; #contador de enderecos
movi r5, 0b00000000000000000000000000000001; #dado 
movi r6, 0x1000
envia_dados:
custom 0, r3, r4, r5 #carrega no vga com o endereco e dados definidos 
addi r4, r4, 1
bne r4, r6, envia_dados
br end 

end:
br end
.end