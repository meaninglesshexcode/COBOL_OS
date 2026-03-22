format ELF64

public screen_write

section '.text' executable

screen_write:
    ; rdi = pointer to character
    ; rsi = pointer to offset
    movzx rax, byte [rdi]    ; load the character byte
    mov rcx, [rsi]           ; and the offset
    mov rdx, 0xB8000         ; buffer address
    mov byte [rdx + rcx*2], al   ; write character
    mov byte [rdx + rcx*2 + 1], 0x07  ; white on black colour
    ret
