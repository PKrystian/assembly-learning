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
    cmp $0, %EBX
    jg dalej
    add %EAX, %EDX
dalej:
    inc %EDX
    sub %ECX, %EBX
    dec %EBX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    6    |
#| EBX |   7   |   -2    |
#| ECX |   8   |    8    |
#| EDX |   9   |   10    |
