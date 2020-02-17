       IDENTIFICATION DIVISION.
       PROGRAM-ID.     CBLGWW02.
       DATE-WRITTEN.   12/12/19.
       AUTHOR.         GABRIEL WERTZ.
       DATE-COMPILED.
      ******************************************************************
      * THIS PROGRAM READS A FILE
      *WRITES A RECORD OF BOAT RECORDS
      ******************************************************************

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.


           SELECT CBLBOAT
               ASSIGN TO 'C:\IHCC\COB\COBGWW02\CBLBOAT.DAT'
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT BOATPRT1
               ASSIGN TO 'C:\IHCC\COB\COBGWW02\BOATPRT1.PRT'
               ORGANIZATION IS RECORD SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD  CBLBOAT
           LABEL RECORD IS STANDARD
           DATA RECORD IS I-REC
           RECORD CONTAINS 42 CHARACTERS.

       01  I-REC.
           05  I-LAST-NAME             PIC X(15).
           05  I-STATE                 PIC XX.
           05  I-BOAT-COST             PIC 9(6)V99.
           05 I-PURCHASE-DATE.
               10  I-YEAR                  PIC 9999.
               10  I-MONTH                 PIC 99.
               10  I-DAY                   PIC 99.
           05  I-BOAT-TYPE             PIC X.
           05  I-ACCESSORY-PACKAGE     PIC 9.
           05  I-PREP-DELIVER-COST     PIC 9(3).

       FD  BOATPRT1
           LABEL RECORD IS OMITTED
           RECORD CONTAINS 132 CHARACTERS
           DATA RECORD IS PRTLINE
           LINAGE IS 60 WITH FOOTING AT 56.

       01  PRTLINE                     PIC X(132).

       WORKING-STORAGE SECTION.
       01  WORK-AREA.
           05 C-SALECTR             PIC 9999    VALUE ZERO.
           05 MORE-RECS             PIC XXX     VALUE 'YES'.
           05 PCTR                  PIC 99      VALUE ZERO.
           05 TOTAL-COST            PIC 9(7)V99 VALUE ZERO.
           05 MJ-TOTAL-COST         PIC 9(10)V99 VALUE ZERO.
           05 GT-TOTAL-COST         PIC 9(12)V99 VALUE ZERO.
           05 BOAT-TYPE             PIC X(13) VALUE 'BOAT'.
           05 BOAT-COST             PIC 9(6)V99 VALUE ZERO.
           05 PREP-DELIVERY-COST    PIC 9(3) VALUE ZERO.
         
      

       01  CURRENT-DATE-AND-TIME.
           05  I-DATE.
               10  I-YY                PIC 9(4).
               10  I-MM                PIC 99.
               10  I-DD                PIC 99.
           05  I-TIME                  PIC X(11).

       01  COMPANY-TITLE.
           05  FILLER          PIC X(6)    VALUE 'DATE:'.
           05  O-MM            PIC 99.
           05  FILLER          PIC X       VALUE '/'.
           05  O-DD            PIC 99.
           05  FILLER          PIC X       VALUE '/'.
           05  O-YY            PIC 9(4).
           05  FILLER          PIC X(40)   VALUE SPACES.
           05  FILLER          PIC X(68)   VALUE 'WERTZ''S BOATS INC.'.
           05  FILLER          PIC X(6)    VALUE 'PAGE:'.
           05  O-PCTR          PIC Z9.

       01  COLUMN-HEADING-ONE.
           05  FILLER          PIC X(44)   VALUE 'CUSTOMER'.
           05  FILLER          PIC X(13)   VALUE 'BOAT'.
           05  FILLER          PIC X(19)   VALUE 'PURCHASE'.
           05  FILLER          PIC X(30)   VALUE 'ACCESSORY'.
           05  FILLER          PIC X(21)   VALUE 'PREP'.
           05  FILLER          PIC X(5)    VALUE 'TOTAL'.

       01  COLUMN-HEADING-TWO.
           05  FILLER                  PIC X(23)   VALUE 'LAST NAME'.
           05  FILLER                  PIC X(21)   VALUE 'STATE'.
           05  FILLER                  PIC X(13)   VALUE 'COST'.
           05  FILLER                  PIC X(19)   VALUE 'DATE'.
           05  FILLER                  PIC X(30)   VALUE 'PACKAGE'.
           05  FILLER                  PIC X(22)   VALUE 'COST'.
           05  FILLER                  PIC X(4)    VALUE 'COST'.

       01 BOAT-LINE.
           05  FILLER                  PIC X(12)   VALUE 'BOAT TYPE: '.
           05  H-BOAT-TYPE             PIC X(13).
           05  FILLER                  PIC X(107)  VALUE SPACES.

       01  DETAIL-LINE.
           05  O-LAST-NAME             PIC X(16).
           05  FILLER                  PIC X(8)    VALUE SPACES.
           05  O-STATE                 PIC X(14).
           05  O-BOAT-COST             PIC ZZZ,ZZZ.99.
           05  FILLER                  PIC X(9)    VALUE SPACES.
           05  O-DATE                  PIC 99.
           05  FILLER                  PIC X       VALUE '/'.
           05  O-DATEM                 PIC 99.
           05  FILLER                  PIC X       VALUE '/'.
           05  O-DATEY                 PIC 99. 
           05  FILLER                  PIC X(11)   VALUE SPACES.
           05  O-ACCESSORY-PACKAGE     PIC X(24).
           05  O-PREP-COST             PIC ZZZ,ZZZ.99.
           05  FILLER                  PIC X(10).
           05  O-TOTAL-COST            PIC Z,ZZZ,ZZZ.99.
      *WRONG AMOUNT OF CHARACTERS* 
       01  MAJOR-SUBTOTAL-LINE.
           05  FILLER              PIC X(23)   VALUE SPACES.
           05  FILLER              PIC X(13)   VALUE 'SUBTOTALS FOR'.
           05  FILLER              PIC X       VALUE SPACES.
           05  O-MJ-BOAT-TYPE      PIC X(22).  
           05  FILLER              PIC X(12)   VALUE 'NUMBER SOLD:'.
           05  FILLER              PIC XX      VALUE SPACES.
           05  O-MJ-CTR            PIC Z,ZZ9.
           05  FILLER              PIC X(37)   VALUE SPACES.
           05  O-MJ-TOTAL-COST     PIC $$$$,$$$,$$$.99.

       01  GRAND-TOTAL-LINE.
           05  FILLER                  PIC X(23)   VALUE SPACES.
           05  FILLER                  PIC X(37)   VALUE 'GRAND TOTALS'.
           05  FILLER                  PIC X(13)   VALUE 'NUMBER SOLD:'.
           05  FILLER                  PIC X       VALUE SPACES.
           05  O-GT-SALECTR            PIC ZZ,ZZ9.
           05  FILLER                  PIC X(35)   VALUE SPACES.
           05  O-GT-TOTAL-COST         PIC $$$,$$$,$$$,$$$.99.

       PROCEDURE DIVISION.
       0000-MAIN.
           PERFORM 1000-INIT.
           PERFORM 2000-MAINLINE
           UNTIL MORE-RECS = 'NO'.
           PERFORM 3000-CLOSING.
           STOP RUN. 
       1000-INIT.
           OPEN INPUT CBLBOAT.
           OPEN OUTPUT BOATPRT1.

           MOVE FUNCTION CURRENT-DATE TO CURRENT-DATE-AND-TIME.
           MOVE I-YY TO O-YY.
           MOVE I-DD TO O-DD.
           MOVE I-MM TO O-MM.
           PERFORM 9000-READ
           PERFORM 9200-HDGS.

           MOVE I-BOAT-TYPE TO BOAT-TYPE.

       2000-MAINLINE.
               IF BOAT-TYPE NOT EQUAL TO I-BOAT-TYPE
                   PERFORM 9100-MAJORSUBTOTALS
           PERFORM 2100-CALCS.
           PERFORM 2200-OUTPUT.
           PERFORM 9000-READ.

       2100-CALCS.
           MOVE I-BOAT-COST TO BOAT-COST.
           MOVE I-PREP-DELIVER-COST TO PREP-DELIVERY-COST.
           COMPUTE TOTAL-COST = BOAT-COST + I-PREP-DELIVER-COST.
           COMPUTE C-SALECTR = 1 + C-SALECTR.
           ADD TOTAL-COST TO MJ-TOTAL-COST.
       2200-OUTPUT.
           MOVE I-LAST-NAME TO O-LAST-NAME.
           MOVE I-STATE TO O-STATE.
           MOVE I-BOAT-TYPE TO  O-BOAT-COST.     
           MOVE I-DAY TO  O-DATE .
           MOVE I-MONTH TO O-DATEM.      
           MOVE I-YEAR TO O-DATEY.       
           MOVE I-PREP-DELIVER-COST TO O-PREP-COST.    
           MOVE TOTAL-COST TO O-TOTAL-COST.        

           EVALUATE I-ACCESSORY-PACKAGE
               WHEN '1'
                  MOVE 'ELECTRONICS' TO O-ACCESSORY-PACKAGE
               WHEN '2'
                   MOVE 'SKI PACKAGE' TO O-ACCESSORY-PACKAGE
               WHEN '3'
                   MOVE 'FISHING PACKAGE' TO O-ACCESSORY-PACKAGE
           END-EVALUATE.
           WRITE PRTLINE FROM DETAIL-LINE
               AFTER ADVANCING 1 LINE
                   AT EOP
                       PERFORM 9200-HDGS.

       3000-CLOSING.
           PERFORM 9300-GRANDTOTALS. 
           PERFORM 9100-MAJORSUBTOTALS.
           WRITE PRTLINE FROM GRAND-TOTAL-LINE
               AFTER ADVANCING 2 LINES.

           CLOSE CBLBOAT
                 BOATPRT1.

       9000-READ.
           READ CBLBOAT
               AT END
                   MOVE 'NO' TO MORE-RECS.

       9100-MAJORSUBTOTALS.
           MOVE H-BOAT-TYPE TO O-MJ-BOAT-TYPE.
           MOVE MJ-TOTAL-COST TO O-MJ-TOTAL-COST.
           MOVE C-SALECTR TO O-MJ-CTR. 
           EVALUATE I-BOAT-TYPE 
               WHEN 'B' 
                   MOVE 'BASS BOAT' TO O-MJ-BOAT-TYPE
               WHEN 'P'
			       MOVE 'PONTOON BOAT' TO O-MJ-BOAT-TYPE
		       WHEN 'S' 
			       MOVE 'SKI BOAT' TO O-MJ-BOAT-TYPE
		       WHEN 'J'
			       MOVE 'JOHN BOAT' TO O-MJ-BOAT-TYPE
		       WHEN 'C'
			       MOVE 'CANOE' TO O-MJ-BOAT-TYPE
		       WHEN 'R'
			       MOVE 'CABIN CRUISER' TO O-MJ-BOAT-TYPE
           END-EVALUATE. 
           WRITE PRTLINE FROM MAJOR-SUBTOTAL-LINE
               AFTER ADVANCING 1 LINE.
       

       9300-GRANDTOTALS. 
           MOVE O-MJ-CTR TO O-GT-SALECTR.
           MOVE O-MJ-TOTAL-COST TO O-GT-TOTAL-COST.
           WRITE PRTLINE FROM MAJOR-SUBTOTAL-LINE
               AFTER ADVANCING 1 LINE. 
       9200-HDGS.
           ADD 1 TO PCTR.
           MOVE PCTR TO O-PCTR.
           WRITE PRTLINE FROM COMPANY-TITLE
               AFTER ADVANCING PAGE.
           WRITE PRTLINE FROM COLUMN-HEADING-ONE
               AFTER ADVANCING 1 LINE.
           WRITE PRTLINE FROM COLUMN-HEADING-TWO
               AFTER ADVANCING 1 LINE.
           WRITE PRTLINE FROM MAJOR-SUBTOTAL-LINE
               AFTER ADVANCING 1 LINE. 
           END PROGRAM CBLGWW02.    