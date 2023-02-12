PROGRAM FormattingCode(INPUT, OUTPUT);
VAR
  W1, W2: CHAR;
BEGIN {FormattingCode}
  W1 := ' ';
  W2 := ' ';
  WHILE NOT(EOLN)
  DO
    BEGIN
      W1 := W2;
      READ(W2);
      WHILE W2 = ' '                        {Check '   BEGIN'}
      DO
      BEGIN
        W1 := W2;
        READ(W2);
      END;
      IF (W1 = 'I') AND (W2 = 'N')                 {Check BEGIN}
      THEN
        BEGIN
          WRITELN(W2);
          WRITE(' ');
          W1 := W2;
          READ(W2);
          IF W2 <> ' '
          THEN
            WRITE(' ')
        END;
      IF (W1 = 'T') AND (W2 = 'E')                     {Check WRITE/WRITELN}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 = 'L'
          THEN
            BEGIN
              WRITE('LN');
              W1 := W2;
              READ(W2);
              W1 := W2;
              READ(W2)
            END;
            IF W2 = '('
            THEN
              WHILE W2 <> ')'
              DO
                BEGIN
                  IF W2 = ','               {Check ', '}
                  THEN
                    WRITE(', ');
                  IF (W2 <> ' ') AND (W2 <> ',')
                  THEN
                    WRITE(W2);
                  W1 := W2;
                  READ(W2)
                END;
              WRITE(')');
              W1 := W2;
              READ(W2)    
        END;
      IF (W1 = 'A') AND (W2 = 'D')                    {Check READ/READLN}      
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 = 'L'
          THEN
            BEGIN
              WRITE('LN');
              W1 := W2;
              READ(W2);
              W1 := W2;
              READ(W2)
            END;
            IF W2 = '('
            THEN
              WHILE W2 <> ')'
              DO
                BEGIN
                  IF W2 = ','                         {Check ', '}
                  THEN
                    WRITE(', ');
                  IF (W2 <> ' ') AND (W2 <> ',')
                  THEN
                    WRITE(W2);
                  W1 := W2;
                  READ(W2)
                END;
              WRITE(')');
              W1 := W2;
              READ(W2)    
        END;
      IF W2 = ';'                                     {Check ;}
      THEN
        BEGIN
          WRITELN(W2);
          WRITE('  ');
          W1 := W2;
          READ(W2);
          IF W2 <> ' '
          THEN
            WRITE(W2)  
        END
      ELSE
        IF (W1 = ' ') AND (W2 = 'E') {Check ' END.'}
        THEN
          BEGIN
            WRITELN;
            WRITE(W2);
            W1 := W2;
            READ(W2);
            WRITE(W2)
          END
        ELSE
          WRITE(W2) 
    END  
END. {FormattingCode}
