.global _start
.data
    # ------
    # arrays
    # ------

.text
_start:
    mov $6, %EAX
    mov $7, %EBX
    mov $8, %ECX
    mov $9, %EDX
__begin:
    cmp %EBX, %ECX
    jle dalej
    add %EAX, %EBX
    jmp koniec
dalej:
    sub %EDX, %EAX
    dec %EBX
koniec:
    inc %EDX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    6    |
#| EBX |   7   |   13    |
#| ECX |   8   |    8    |
#| EDX |   9   |   10    |
