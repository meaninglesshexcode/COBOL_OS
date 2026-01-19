format ELF64
public display_text

section '.text' executable

display_text:
    push rbx
    push rsi
    push rdi

    cld                     ; ALWAYS do this before lods/stos

    ; Save string pointer before clobbering RDI
    mov rsi, rdi            ; RSI = string pointer

    ; Clear screen
    mov rdi, 0xB8000
    mov rcx, 80 * 25
    mov ax, 0x0720
    rep stosw

    ; Print string
    mov rdi, 0xB8000
    mov ah, 0x07

.print_loop:
    lodsb                   ; AL = *RSI++
    test al, al
    jz .done
    stosw                   ; write char+attr
    jmp .print_loop

.done:
    pop rdi
    pop rsi
    pop rbx
    ret
