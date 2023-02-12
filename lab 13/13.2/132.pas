PROGRAM FixLexico(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Ch: CHAR;
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
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN
          Result := '2'
    END; {WHILE}
  IF Result = '0'
  THEN
    IF (NOT(EOLN(F1))) AND (EOLN(F2))
    THEN
      Result := '2'
    ELSE
      IF (EOLN(F1)) AND (NOT(EOLN(F2)))
      THEN
        Result := '1'
END; {Lexico}
BEGIN {FixLexico}
  CopyFile(INPUT, F1);
  CopyFile(INPUT, F2);
  Lexico(F1, F2, Ch);
  WRITELN(Ch)
END.{FixLexico}
