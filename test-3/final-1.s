.global _start
.data
	tab: .long 2, 1, 4, 3, 6, 5, 8, 7, 10, 9
    nap: .asciz "Antonio"

.text
_start:
__begin:
	mov tab, %EAX
    mov tab+8, %EBX
    mov tab(, %EBX, 4), %ECX
    mov tab+12, %EDX
__end: nop


#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   0   |    2    |
#| EBX |   0   |    4    |
#| ECX |   0   |    6    |
#| EDX |   0   |    3    |
