PROGRAM BubbleSortMLB(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSortMLB}
  { �������� INPUT � F1 }
  REWRITE(F1);
  WHILE NOT EOF(INPUT)
  DO
    BEGIN
      READ(INPUT, Ch);
      WRITE(F1, Ch);
      IF EOLN(INPUT)
      THEN
        BEGIN
          READLN(INPUT);
          WRITELN(F1)
        END
    END;
  WRITELN(F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      WHILE NOT EOF(F1)
      DO
        IF NOT EOF(F1)
        THEN
          BEGIN
            READ(F1,Ch1);
            WHILE NOT EOLN(F1)
            DO { �� ������� ���� ��� ������� �������� ��� Ch1,Ch2 }
              BEGIN
                READ(F1, Ch2);
                { �������   min(Ch1,Ch2) �  F2, ���������
             ��������������� ������� }
                IF Ch1 <= Ch2
                THEN
                  BEGIN
                    WRITE(F2, Ch1);
                    Ch1 := Ch2
                  END
                ELSE
                  BEGIN
                    WRITE(F2, Ch2);
                    Sorted := 'N'
                  END
              END;
            WRITELN(F2, Ch1) { ������� ��������� ������ � F2 }
          END
        ELSE
          BEGIN
            READLN(F1);
            WRITELN(F2)
          END;
      { �������� F2 � F1 }
      REWRITE(F1);
      RESET(F2);
      WHILE NOT EOF(F2)
      DO
        IF NOT EOLN(F2)
        THEN
          BEGIN  
            READ(F2, Ch);
            WRITE(F1, Ch)
          END
        ELSE
          BEGIN
            READLN(F2);
            WRITELN(F1)
          END;
      WRITELN(F1)
    END;
  { �������� F1 � OUTPUT }
   RESET(F1);
   WHILE NOT EOF(F1)
   DO
     IF NOT EOLN(F1)
     THEN
       BEGIN
         READ(F1, Ch);
         WRITE(OUTPUT, Ch)
       END
     ELSE
       BEGIN 
         READLN(F1);
         WRITELN(OUTPUT)
       END;
   WRITELN(F1)
END. {BubbleSortMLB}
