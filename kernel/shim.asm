format ELF64 executable 3
entry start

segment readable executable
start:
    mov rsp, stack_space + 4096
    and rsp, -16
    sub rsp, 8            ; SysV ABI alignment

    call cornol_entry

.hang:
    hlt
    jmp .hang

segment readable writeable
align 16
stack_space: times 4096 db 0
