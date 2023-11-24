.global _start
.data
    # ------
    # arrays
    # ------
    # I would ignore this task in the exam.
.text
_start:
    mov $6, %EAX
    mov $7, %EBX
    mov $8, %ECX
    mov $9, %EDX
__begin:
    proc: sub %ESP, %EAX
        mov 4(%ESP), %ECX
        mov 8(%ESP), %EDX
        mov %ESP, %EBX
        ret
    _start2: push %EAX
        mov %ESP, %EAX
        push %EBX
        call proc
        sub %ESP, %EBX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |  14102  |
#| EBX |   7   | -14096  |
#| ECX |   8   | -13515  |
#| EDX |   9   |    0    |
