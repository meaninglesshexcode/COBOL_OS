format ELF64
public check_keyboard

section '.text' executable
check_keyboard:
    ; RDI contains pointer to COBOL's buffer (System V calling convention)
    push rdi           ; save the pointer
    
.wait_input:
    in al, 0x64        ; PS/2 status port
    test al, 1         ; check if output buffer full
    jz .wait_input
    
    in al, 0x60        ; read the key
    
    pop rdi            ; restore pointer
    mov [rdi], al      ; write key to COBOL's buffer
    ret
