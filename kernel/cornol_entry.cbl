>This is a TEST! This is NOT an OS!!!
IDENTIFICATION DIVISION.
PROGRAM-ID. cornol_entry.

ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
    01 keyboard-buffer PIC X(1).  *> Will hold one byte

PROCEDURE DIVISION.
MAIN-LOOP.
    PERFORM UNTIL 0 = 1
        CALL 'check_keyboard' USING keyboard-buffer
        DISPLAY "Key read: " keyboard-buffer
    END-PERFORM
    STOP RUN.
