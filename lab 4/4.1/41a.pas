PROGRAM Split(INPUT,OUTPUT);
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
          WRITE(Odds, Ch);
          Next := 'E';
        END
      ELSE
        BEGIN
          WRITE(Evens, Ch);
          Next := 'O';
        END;
      READ(INPUT, Ch)
    END;
END.
