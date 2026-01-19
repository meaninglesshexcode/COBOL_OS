format ELF64
public check_keyboard

section '.text' executable

check_keyboard:
    ; RDI = pointer to buffer (SysV ABI)
    push rdi                ; preserve pointer (harmless, explicit)

.wait_input:
    in al, 0x64             ; PS/2 status port
    test al, 1              ; output buffer full?
    jz .wait_input

    in al, 0x60             ; read scancode

    pop rdi                 ; restore pointer
    mov [rdi], al           ; write into buffer
    ret
