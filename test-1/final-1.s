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
#-------------------------
    mov %EBX, %ECX
    add %EAX, %ECX
    mov %EAX, %EDX
    sub %EBX, %EDX
    dec %EBX

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    6    |
#| EBX |   7   |    6    |
#| ECX |   8   |   13    |
#| EDX |   9   |   -1    |
