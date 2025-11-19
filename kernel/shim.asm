format ELF64 executable 3
entry start

segment readable executable
start:
    mov rsp, stack_space
    jmp cornol_entry

segment readable writeable
stack_space: times 4096 db 0
