.equ leds, 0x3000
.global _start 
_start: 
movia r3, leds
movi r4, 0b0001
movi r5, 0b0001
custom 0, r6, r4, r5
stw r6, 0(r3)
end:
br end
.end