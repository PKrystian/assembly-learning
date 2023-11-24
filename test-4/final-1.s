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
    push %EAX
    push %EBX
    push %ECX
    push %EDX
    pop %EAX
    pop %EBX
    add $4, %ESP
    pop %EDX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    9    |
#| EBX |   7   |    8    |
#| ECX |   8   |    8    |
#| EDX |   9   |    6    |
