      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-COUNT PIC 9(2) VALUE 99.
       01 WS-COUNT2 PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM B-PARA UNTIL WS-COUNT EQUALS 0.
            STOP RUN.
       B-PARA.
           DISPLAY WS-COUNT " BOTTLES OF BEER ON THE WALL, "
           DISPLAY WS-COUNT " BOTTLE OF BEER".
           COMPUTE WS-COUNT2 = WS-COUNT - 1.
           DISPLAY "TAKE ONE DOWN AND PASS IT AROUND ".
           DISPLAY WS-COUNT2 " BOTTLES OF BEER ON THE WALL".
           DISPLAY ""
           SUBTRACT 1 FROM WS-COUNT.
       END PROGRAM YOUR-PROGRAM-NAME.
