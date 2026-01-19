IDENTIFICATION DIVISION.
PROGRAM-ID. cornol_entry.

DATA DIVISION.
WORKING-STORAGE SECTION.

01 keyboard-buffer        PIC X.
01 full-message.
    05 msg                PIC X(21).
    05 nul                PIC X VALUE X"00".
01 display-char            PIC X.
01 shift-state             PIC 9 VALUE 0.
01 idx                     PIC 9 VALUE 0.

01 keyboard-table.
   05 ascii-char OCCURS 512 TIMES PIC X VALUE SPACE. *> includes shifted table at 256+ offset

PROCEDURE DIVISION.
MAIN-LOOP.

    * Initialize keyboard layout
    CALL "keyboard_table" USING keyboard-table

    PERFORM UNTIL 1 = 0
        * Read raw scancode from keyboard
        CALL "check_keyboard" USING keyboard-buffer

        COMPUTE idx = FUNCTION ORD(keyboard-buffer)

        * Track shift key presses
        IF idx = 42 OR idx = 54
            MOVE 1 TO shift-state
            NEXT SENTENCE
        ELSE IF idx = 170 OR idx = 182
            MOVE 0 TO shift-state
            NEXT SENTENCE
        END-IF

        * Map scancode to ASCII (add 256 if shift pressed)
        IF shift-state = 1
            COMPUTE idx = idx + 256
        END-IF

        MOVE ascii-char(idx + 1) TO display-char

        * Compose the message
        MOVE SPACES TO msg(1:10)
        MOVE "Key read: " TO msg(1:10)
        MOVE display-char TO msg(11:1)

        * Display the message
        CALL "display_text" USING full-message
    END-PERFORM

    GOBACK.
