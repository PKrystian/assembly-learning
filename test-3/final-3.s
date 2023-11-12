.global _start
.data
	tab: .long 2, 1, 4, 3, 6, 5, 8, 7, 10, 9
    nap: .asciz "Antonio"

.text
_start:	
__begin:
    mov $-1, %EBX
    wstecz: inc %EBX
        cmpb $0, nap(%EBX)
        je koniec
        cmpb $'n', nap(%EBX)
        jne wstecz
        mov %EBX, %EAX
        jmp wstecz
        koniec: mov %EBX, %ECX
            sub %EAX, %ECX
            mov %ECX, %EDX
__end: nop


#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   0   |    4    |
#| EBX |   0   |    7    |
#| ECX |   0   |    3    |
#| EDX |   0   |    3    |
