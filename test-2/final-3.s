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
wstecz:
    cmp %EAX, %EDX
    jne dalej
    add %EBX, %ECX
    dec %EDX
    jmp wstecz
dalej:
    inc %EAX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    7    |
#| EBX |   7   |    7    |
#| ECX |   8   |    8    |
#| EDX |   9   |    9    |
