format ELF64 executable 3
entry start
segment readable executable
start:
    mov rsp, stack_top
    jmp cornol_entry
stack_top:
    resb 4096 ; 4 KB stack2 / 2
