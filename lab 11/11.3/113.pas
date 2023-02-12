PROGRAM WithoutLast(INPUT, OUTPUT);
VAR
  W1: CHAR;
BEGIN
  IF NOT EOLN(INPUT)
  THEN
    BEGIN
      WHILE NOT EOLN(INPUT)
      DO
        BEGIN
          READ(W1);
          IF NOT EOLN(INPUT)
          THEN
            WRITE(W1)
          
        END;
      WRITELN
    END
  ELSE
    WRITELN
END.
