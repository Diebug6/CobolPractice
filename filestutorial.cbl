      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
               SELECT STUDENT ASSIGN TO "../file.txt"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
           01 STUDENT-FILE.
               05 STUDENT-ID PIC 9(4).
               05 STUDENT-NAME PIC A(5).
               05 STUDENT-MARK PIC 9(3).

           WORKING-STORAGE SECTION.
           01 WS-STUDENT.
               05 WS-STUDENT-ID PIC 9(4).
               05 WS-STUDENT-NAME PIC A(5).
               05 WS-STUDENT-MARK PIC 9(3).

           01 WS-EOF PIC A(1).
       PROCEDURE DIVISION.
            OPEN INPUT STUDENT.
               PERFORM UNTIL WS-EOF = 'Y'
                   READ STUDENT INTO WS-STUDENT
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END DISPLAY WS-STUDENT
                   END-READ
               END-PERFORM.
            CLOSE STUDENT.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
