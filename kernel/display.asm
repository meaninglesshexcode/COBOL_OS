format ELF64

public display_text

section '.text' executable
display_text:
    push rbx
    push rsi
    push rdi
    mov rdi, 0xB8000
    mov rcx, 80 * 25
    mov ax, 0x0720
    rep stosw
    mov rsi, [rsp + 24]
    mov rdi, 0xB8000
    mov ah, 0x07
print_loop:
    lodsb
    test al, al
    jz done
    stosw
    jmp print_loop
done:
    pop rdi
    pop rsi
    pop rbx
    ret
