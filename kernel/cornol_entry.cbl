>This is a TEST! This is NOT an OS!!!
IDENTIFICATION DIVISION.
PROGRAM-ID. cornol_entry.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
    01 keyboard-buffer PIC X(1).
    01 display-message PIC X(20) VALUE "Key read: ".
    01 full-message PIC X(21).
PROCEDURE DIVISION.
MAIN-LOOP.
    PERFORM UNTIL 0 = 1
        CALL 'check_keyboard' USING keyboard-buffer
        STRING display-message DELIMITED BY SIZE
               keyboard-buffer DELIMITED BY SIZE
               INTO full-message
        CALL 'display_text' USING full-message
    END-PERFORM
    STOP RUN.
