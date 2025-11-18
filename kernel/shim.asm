format ELF64 executable 3
entry start
segment readable executable
start:
    mov rsp, stack_top
    jmp cornol_entry
segment readable writeable
stack_top:
    resb 4096
