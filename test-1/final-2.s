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
    mov %EAX, %ECX
    and %EBX, %ECX
    mov %EBX, %EDX
    or %EBX, %EDX
    xor %EAX, %EBX
    inc %EAX

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    7    |
#| EBX |   7   |    1    |
#| ECX |   8   |    6    |
#| EDX |   9   |    7    |
