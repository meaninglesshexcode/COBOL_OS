format ELF64

public check_keyboard
public keyboard_buffer

section '.data' writeable
keyboard_buffer: times 256 db 0

section '.text' executable
check_keyboard:
    mov al, 0
.wait_input:
    in al, 0x64        ; PS/2 status port
    test al, 1         ; check if output buffer full
    jz .wait_input
    in al, 0x60        ; read key
    mov [keyboard_buffer], al
    ret
