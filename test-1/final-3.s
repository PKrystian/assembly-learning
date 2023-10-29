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
    mul %ECX
    mov %EDX, %ECX
    div %EBX
    xchg %EDX, %EBX

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    6    |
#| EBX |   7   |    6    |
#| ECX |   8   |    0    |
#| EDX |   9   |    7    |
