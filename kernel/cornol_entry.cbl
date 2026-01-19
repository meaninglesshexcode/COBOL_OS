IDENTIFICATION DIVISION.
PROGRAM-ID. cornol_entry.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 keyboard-buffer PIC X.
    01 full-message.
        05 msg PIC X(21).
        05 nul PIC X VALUE X"00".

PROCEDURE DIVISION.
MAIN-LOOP.
    PERFORM UNTIL 1 = 0
        CALL "check_keyboard" USING keyboard-buffer

        MOVE SPACES TO msg
        MOVE "Key read: " TO msg(1:10)
        MOVE keyboard-buffer TO msg(11:1)

        CALL "display_text" USING full-message
    END-PERFORM

    GOBACK.
