.global _start
.data
table:
    .int 10, 20, 30, 40, 50

.text
_start:
__begin:
    mov table, %EAX
    leal table, %ECX
    mov 8(%ECX), %EBX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   0   | address |
#| EBX |   0   |   30    |
#| ECX |   0   |    0    |
#| EDX |   0   |    0    |
