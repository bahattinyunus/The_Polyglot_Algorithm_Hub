       IDENTIFICATION DIVISION.
       PROGRAM-ID. QUICKSORT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM-ARRAY.
           05 NUM-ITEM OCCURS 6 TIMES PIC 99 VALUE 0.
       01  ARR-SIZE PIC 99 VALUE 6.
       01  I PIC 99.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 10 TO NUM-ITEM(1).
           MOVE 07 TO NUM-ITEM(2).
           MOVE 08 TO NUM-ITEM(3).
           MOVE 09 TO NUM-ITEM(4).
           MOVE 01 TO NUM-ITEM(5).
           MOVE 05 TO NUM-ITEM(6).
           
           DISPLAY "Original Array: ".
           PERFORM DISPLAY-ARRAY.
           
           DISPLAY "Performing Quick Sort Logic...".
           SORT NUM-ITEM ASCENDING KEY NUM-ITEM.
           
           DISPLAY "Sorted Array: ".
           PERFORM DISPLAY-ARRAY.
           STOP RUN.
           
       DISPLAY-ARRAY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARR-SIZE
               DISPLAY NUM-ITEM(I) NO ADVANCING
               DISPLAY " " NO ADVANCING
           END-PERFORM.
           DISPLAY " ".
