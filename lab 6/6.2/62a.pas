PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  Next := 'O';
  REWRITE(Odds);
  REWRITE(Evens);
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN
        BEGIN
          WRITE(OUTPUT, Next);
          Next := 'E'
        END
      ELSE
        BEGIN
          WRITE(OUTPUT, Next);
          Next := 'O'
        END;
      READ(INPUT, Ch)
    END;
  WRITELN(OUTPUT) 
END.
