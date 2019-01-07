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
       01 WS-NAME PIC A(10).
       01 WS-COUNTDOWN PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your name".
            ACCEPT WS-NAME.
            DISPLAY "Enter countdown timer".
            ACCEPT WS-COUNTDOWN.
            PERFORM COUNTDOWN-PRO UNTIL WS-COUNTDOWN = 0.
            DISPLAY "Your name is: "WS-NAME.
            STOP RUN.

       COUNTDOWN-PRO.
           DISPLAY WS-COUNTDOWN.
           SUBTRACT 1 FROM WS-COUNTDOWN.

       END PROGRAM YOUR-PROGRAM-NAME.
