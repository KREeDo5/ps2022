PROGRAM CopyOdds(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
BEGIN
  Next := 'O';
  READ(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN
        WRITE(Ch);
      READ(Ch);
      IF Next = 'O'
      THEN
        Next := 'E'
      ELSE
        Next := 'O'
    END;
  WRITELN
END.
