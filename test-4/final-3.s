.global _start
.data
    # ------
    # arrays
    # ------
.text
mov $6, %EAX
mov $7, %EBX
mov $8, %ECX
mov $9, %EDX
call proc
proc: sub %ESP, %EAX
    mov 4(%ESP), %ECX
    mov 8(%ESP), %EDX
    mov %ESP, %EBX
    ret
_start: push %EAX
    mov %ESP, %EAX
    push %EBX
    call proc
    sub %ESP, %EBX
__end: nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    8    |
#| EBX |   7   |   -4    |
#| ECX |   8   |    0    |
#| EDX |   9   |    0    |
