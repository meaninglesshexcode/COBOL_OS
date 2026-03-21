IDENTIFICATION DIVISION.
PROGRAM-ID. initmemory.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 heap-memory PIC X(524288).
01 heap-pointer PIC 9(7) VALUE 1.
01 heap-size PIC 9(7) VALUE 524288.
01 requested-size PIC 9(7) VALUE 0.
01 allocated-address PIC 9(7) VALUE 0.

PROCEDURE DIVISION.
  ALLOCATE-MEMORY.
    IF heap-pointer + requested-size > heap-size
        GO TO OUT-OF-MEMORY
    END-IF
    MOVE heap-pointer TO allocated-address
    COMPUTE heap-pointer = heap-pointer + requested-size
    STOP RUN.
OUT-OF-MEMORY.
    MOVE 1 TO RETURN-CODE
    STOP RUN.
