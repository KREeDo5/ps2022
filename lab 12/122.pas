PROGRAM DelSpace(INPUT, OUTPUT); {DP0}
VAR
  W2: CHAR;
BEGIN
  IF NOT EOLN(INPUT)
  THEN
    BEGIN
      WHILE NOT EOLN(INPUT)
      DO
        BEGIN 
          READ(W2);
          IF W2 = ' '
          THEN
            BEGIN 
              READ(W2);
              IF W2 = ' '
              THEN
                READ(W2)
            END
          ELSE
            WRITE(W2)
        END
    END
  ELSE
    WRITELN
END.
