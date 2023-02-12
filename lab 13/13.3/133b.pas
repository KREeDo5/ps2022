PROGRAM Split(INPUT, OUTPUT);
VAR
  Odds, Evens: TEXT;
PROCEDURE InputDivision(VAR F, Odds, Evens: TEXT);
VAR
  Ch, Next: CHAR;
BEGIN
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  WHILE NOT EOF(F)
  DO
    BEGIN
      WHILE NOT EOLN(F)
      DO
        BEGIN
          READ(F, Ch);
          IF Next = 'O'
          THEN
            BEGIN
              WRITE(Odds, Ch);
              Next := 'E'
            END
          ELSE
            BEGIN
              WRITE(Evens, Ch);
              Next := 'O';
            END;
        END;
      READLN(F);
    END;
  WRITELN(Odds);
  WRITELN(Evens)
END;
PROCEDURE CopyOut(VAR F: TEXT);
VAR 
  Ch: CHAR;
BEGIN
  RESET(F);
  WHILE NOT(EOLN(F))
  DO
    BEGIN
      READ(F, Ch);
      WRITE(OUTPUT, Ch)
    END
END;
BEGIN
  InputDivision(INPUT, Odds, Evens);
  CopyOut(Odds);
  CopyOut(Evens);
  WRITELN
END.
