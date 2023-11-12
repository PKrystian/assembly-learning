.global _start
.data
	tab: .long 2, 1, 4, 3, 6, 5, 8, 7, 10, 9
    nap: .asciz "Antonio"

.text
_start:
__begin:
	lea tab+12, %ESI
    mov (%ESI), %EAX
    mov 4(%ESI), %EBX
    mov $tab, %EDI
    mov 8(%EDI), %ECX
    mov (%EDI, %ECX, 4), %EDX
__end: nop


#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   0   |    3    |
#| EBX |   0   |    6    |
#| ECX |   0   |    4    |
#| EDX |   0   |    6    |
