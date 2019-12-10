       identification division.
       PROGRAM-ID.     COBGWW01.
       DATE-WRITTEN.   12/09/19.
       AUTHOR.         GABRIEL WERTZ.
       DATE-COMPILED.
      ****************************************
      * THIS PROGRAM READS  *
      * A .            *
      ****************************************

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT SOMETHING
               ASSIGN TO 'C:\USERS\GABRIEL\SOURCE\REPOS\SOMETHING.DAT'
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT 
               ASSIGN TO 
               ORGANIZATION IS 
       DATA DIVISION.
       FILE SECTION

       FD SOMETHING
           LABEL RECORD IS STANDARD
           DATA RECORD IS 
           RECORD CONTAIN -- CHARACTERS.
       01 --.

       working-storage section.

       procedure division.

           goback.
           
       end program COBGWW01.