PROGRAM BubbleSort(INPUT, OUTPUT);
  { ��������� ������ ������ INPUT � OUTPUT }
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END;
  WRITELN(OutFile)
END;
BEGIN { BubbleSort }
  CopyFile(INPUT, OUTPUT); 
  { �������� F1 � OUTPUT }
END.{ BubbleSort }
