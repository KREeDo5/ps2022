PROGRAM BubbleSort(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSort}
  { �������� INPUT � F1 }
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READLN(INPUT, Ch);
      READ(INPUT, Ch)
      WRITE(F1, Ch);
      WRITE(OUTPUT, Ch)
    END;
  WRITELN(F1);
  Sorted := 'N';
  WHILE Sorted ='N'
  DO
    BEGIN
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      { �������� F2 � F1 }
    END;
  { �������� F1 � OUTPUT }
END. {BubbleSort}
