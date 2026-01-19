IDENTIFICATION DIVISION.
PROGRAM-ID. keyboard_table.

DATA DIVISION.
WORKING-STORAGE SECTION.

01 keyboard-table.
   05 ascii-char OCCURS 256 TIMES PIC X VALUE SPACE.

01 shifted-table.
   05 ascii-char OCCURS 256 TIMES PIC X VALUE SPACE.

PROCEDURE DIVISION USING keyboard-table.

    * Unshifted letters
    MOVE "a" TO ascii-char(30)
    MOVE "b" TO ascii-char(48)
    MOVE "c" TO ascii-char(46)
    MOVE "d" TO ascii-char(32)
    MOVE "e" TO ascii-char(18)
    MOVE "f" TO ascii-char(33)
    MOVE "g" TO ascii-char(34)
    MOVE "h" TO ascii-char(35)
    MOVE "i" TO ascii-char(23)
    MOVE "j" TO ascii-char(36)
    MOVE "k" TO ascii-char(37)
    MOVE "l" TO ascii-char(38)
    MOVE "m" TO ascii-char(50)
    MOVE "n" TO ascii-char(49)
    MOVE "o" TO ascii-char(24)
    MOVE "p" TO ascii-char(25)
    MOVE "q" TO ascii-char(16)
    MOVE "r" TO ascii-char(19)
    MOVE "s" TO ascii-char(31)
    MOVE "t" TO ascii-char(20)
    MOVE "u" TO ascii-char(22)
    MOVE "v" TO ascii-char(47)
    MOVE "w" TO ascii-char(17)
    MOVE "x" TO ascii-char(45)
    MOVE "y" TO ascii-char(21)
    MOVE "z" TO ascii-char(44)

    * Numbers
    MOVE "1" TO ascii-char(2)
    MOVE "2" TO ascii-char(3)
    MOVE "3" TO ascii-char(4)
    MOVE "4" TO ascii-char(5)
    MOVE "5" TO ascii-char(6)
    MOVE "6" TO ascii-char(7)
    MOVE "7" TO ascii-char(8)
    MOVE "8" TO ascii-char(9)
    MOVE "9" TO ascii-char(10)
    MOVE "0" TO ascii-char(11)

    * Symbols (unshifted)
    MOVE "-" TO ascii-char(12)
    MOVE "=" TO ascii-char(13)
    MOVE "[" TO ascii-char(26)
    MOVE "]" TO ascii-char(27)
    MOVE "\" TO ascii-char(43)
    MOVE ";" TO ascii-char(39)
    MOVE "'" TO ascii-char(40)
    MOVE "," TO ascii-char(51)
    MOVE "." TO ascii-char(52)
    MOVE "/" TO ascii-char(53)

    * Shifted letters
    MOVE "A" TO ascii-char(30 + 256) *> We'll access via idx+256 when shift pressed
    MOVE "B" TO ascii-char(48 + 256)
    MOVE "C" TO ascii-char(46 + 256)
    MOVE "D" TO ascii-char(32 + 256)
    MOVE "E" TO ascii-char(18 + 256)
    MOVE "F" TO ascii-char(33 + 256)
    MOVE "G" TO ascii-char(34 + 256)
    MOVE "H" TO ascii-char(35 + 256)
    MOVE "I" TO ascii-char(23 + 256)
    MOVE "J" TO ascii-char(36 + 256)
    MOVE "K" TO ascii-char(37 + 256)
    MOVE "L" TO ascii-char(38 + 256)
    MOVE "M" TO ascii-char(50 + 256)
    MOVE "N" TO ascii-char(49 + 256)
    MOVE "O" TO ascii-char(24 + 256)
    MOVE "P" TO ascii-char(25 + 256)
    MOVE "Q" TO ascii-char(16 + 256)
    MOVE "R" TO ascii-char(19 + 256)
    MOVE "S" TO ascii-char(31 + 256)
    MOVE "T" TO ascii-char(20 + 256)
    MOVE "U" TO ascii-char(22 + 256)
    MOVE "V" TO ascii-char(47 + 256)
    MOVE "W" TO ascii-char(17 + 256)
    MOVE "X" TO ascii-char(45 + 256)
    MOVE "Y" TO ascii-char(21 + 256)
    MOVE "Z" TO ascii-char(44 + 256)

    * Shifted symbols
    MOVE "!" TO ascii-char(2 + 256)
    MOVE "@" TO ascii-char(3 + 256)
    MOVE "#" TO ascii-char(4 + 256)
    MOVE "$" TO ascii-char(5 + 256)
    MOVE "%" TO ascii-char(6 + 256)
    MOVE "^" TO ascii-char(7 + 256)
    MOVE "&" TO ascii-char(8 + 256)
    MOVE "*" TO ascii-char(9 + 256)
    MOVE "(" TO ascii-char(10 + 256)
    MOVE ")" TO ascii-char(11 + 256)
    MOVE "_" TO ascii-char(12 + 256)
    MOVE "+" TO ascii-char(13 + 256)
    MOVE "{" TO ascii-char(26 + 256)
    MOVE "}" TO ascii-char(27 + 256)
    MOVE "|" TO ascii-char(43 + 256)
    MOVE ":" TO ascii-char(39 + 256)
    MOVE """ TO ascii-char(40 + 256)
    MOVE "<" TO ascii-char(51 + 256)
    MOVE ">" TO ascii-char(52 + 256)
    MOVE "?" TO ascii-char(53 + 256)

    * Space, Enter, Backspace, Tab (same for shifted)
    MOVE " " TO ascii-char(57)
    MOVE 13  TO ascii-char(28)
    MOVE 8   TO ascii-char(14)
    MOVE 9   TO ascii-char(15)

    GOBACK.
  
