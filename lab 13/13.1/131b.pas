PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Sorted: CHAR;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(InFile);
  REWRITE(OutFile);
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END;
  WRITELN(OutFile)
END;
PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
VAR
  Ch1, Ch2: CHAR;
BEGIN
  RESET(F1);
  REWRITE(F2);
  READ(F1, Ch1);
  READ(F1, Ch2);
  IF Ch1 <= Ch2
  THEN
    BEGIN
      WRITE(F2, Ch1);
      Ch1 := Ch2;
      Sorted := 'Y'
    END
  ELSE
    BEGIN
      WRITE(F2, Ch2);
      Sorted := 'N'
    END
END;
BEGIN { BubbleSort }
  CopyFile(INPUT, F1); 
  CopyAndSwap(F1, F2, Sorted); 
  CopyFile(F2, OUTPUT); 
  WRITE(Sorted)
END.{ BubbleSort }
