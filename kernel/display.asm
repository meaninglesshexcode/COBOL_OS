format ELF64
public display_text

section '.text' executable
display_text:
    push rbx
    push rsi
    push rdi
    
    ; Clear screen
    mov rdi, 0xB8000
    mov rcx, 80 * 25
    mov ax, 0x0720
    rep stosw
    
    ; RDI contains pointer to string (passed by COBOL)
    mov rsi, rdi        ; Use the passed pointer, not stack
    mov rdi, 0xB8000
    mov ah, 0x07
    
.print_loop:
    lodsb
    test al, al
    jz .done
    stosw
    jmp .print_loop
    
.done:
    pop rdi
    pop rsi
    pop rbx
    ret
