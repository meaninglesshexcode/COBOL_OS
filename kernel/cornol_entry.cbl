IDENTIFICATION DIVISION.
PROGRAM-ID. cornol_entry.
PROCEDURE DIVISION.
    CALL 'memorymanagement'
    IF RETURN-CODE <> 0
        STOP RUN
    END-IF
    CALL 'screen'
    IF RETURN-CODE <> 0
        STOP RUN
    END-IF
    CALL 'keyboard'
    IF RETURN-CODE <> 0
        DISPLAY 'Error calling keyboard'
        STOP RUN
    END-IF
    CALL 'filesystem'
    IF RETURN-CODE <> 0
        DISPLAY 'Error calling filesystem'
        STOP RUN
    END-IF
    CALL 'verbosus'
    STOP RUN.
