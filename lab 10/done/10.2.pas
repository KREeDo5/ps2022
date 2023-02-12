PROGRAM FormattingCode(INPUT, OUTPUT);
VAR
  W1, W2, A1, A2: CHAR;
BEGIN {FormattingCode}
  W1 := ' ';
  W2 := ' ';
  A1 := ' ';
  A2 := ' ';
  WHILE (NOT EOLN(INPUT))
  DO
    BEGIN
      W1 := W2;
      READ(W2);
      IF (W1 = 'N') AND (W2 = ' ') {Check BEGIN}
      THEN
        BEGIN
          WRITELN;
          WRITE('  ');
          W1 := W2;
          READ(W2);
        END;
      WHILE (W2 = ' ')  {Check spaces}
      DO
      BEGIN
        W1 := W2;
        READ(W2);
      END;
      IF W2 = ':' {Check :=}
      THEN
        BEGIN
          W1 := W2;
          READ(W2);
          IF (W1 = ':') AND (W2 = '=')
          THEN
            BEGIN
              WRITE(' := ');
              W1 := W2;
              READ(W2);
              WHILE (W2 = ' ') AND (NOT EOLN(INPUT)) {Check spaces}
              DO
                BEGIN
                  W1 := W2;
                  READ(W2);
                END;
            END
          ELSE
            WRITE(W1)
        END;
      IF (W1 = 'T') AND (W2 = 'E') {Check WRITE/WRITELN}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 = 'L'
          THEN
            BEGIN
              W1 := W2;
              READ(W2);
              WRITE('L');
              IF W2 = 'N'
              THEN
                BEGIN
                  WRITE('N');
                  W1 := W2;
                  READ(W2);
                END
            END;
          IF (W2 = ' ')
          THEN
            BEGIN
              W1 := W2;
              READ(W2);
            END;
          IF W2 = '(' {Check ()}
          THEN
            BEGIN
              WHILE W2 <> ')'
              DO
                BEGIN
                  IF W2 = ',' {Check ', '}
                  THEN
                    WRITE(', ');
                  IF (W2 <> ' ') AND (W2 <> ',') 
                  THEN
                    WRITE(W2);
                  IF (W2 = '''') OR (W1 = '''') {Check ''''}
                  THEN
                    BEGIN
                      W1 := W2;
                      READ(W2);
                      WHILE  W2 <> ''''
                      DO
                        BEGIN
                          IF (W1 <> ' ') AND (W2 = ' ')
                          THEN
                            WRITE(' ')
                          ELSE
                            WRITE(W2);
                          W1 := W2;
                          READ(W2)
                        END;
                      WRITE(W2)
                    END;
                  W1 := W2;
                  READ(W2)
                END;
              WRITE(')');
              W1 := W2;
              READ(W2)
            END    
        END;
      IF (W1 = 'A') AND (W2 = 'D') {Check READ/READLN}      
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          IF W2 = 'L'
          THEN
            BEGIN
              W1 := W2;
              READ(W2);
              WRITE('L');
              IF W2 = 'N'
              THEN
                BEGIN
                  WRITE('N');
                  W1 := W2;
                  READ(W2);
                END
            END;
          IF (W2 = ' ')
          THEN
            BEGIN
              W1 := W2;
              READ(W2);
            END;
          IF W2 = '('
          THEN
            BEGIN
              WHILE W2 <> ')'
              DO
                BEGIN
                  IF W2 = ',' {Check ', '}
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
            END    
        END;
      IF W2 = '''' {Check ''''}
      THEN
        BEGIN
          WRITE(W2);
          W1 := W2;
          READ(W2);
          WHILE W2 <> ''''
          DO
            BEGIN
              IF (W1 <> ' ') AND (W2 = ' ')
              THEN
                WRITE(' ')
              ELSE
                WRITE(W2);
              W1 := W2;
              READ(W2)
            END;
        END;
      IF W2 = ';' {Check ;}
      THEN
        BEGIN
          W1 := W2;
          READ(W2);
          WHILE (W2 = ' ') AND (NOT EOLN(INPUT)) {Check spaces}
                DO
                  BEGIN
                    W1 := W2;
                    READ(W2);
                  END;
          WHILE (W1 = ';') AND (W2 = ';') {Check ;;;;;}
          DO
            BEGIN
              WRITE(W2);
              W1 := W2;
              READ(W2)
            END;
          WRITELN(';');
          IF W2 = 'E' {Check ;END}
          THEN
            WRITE(W2)
          ELSE
            IF W2 = ' ' {Check ; END}
            THEN
              BEGIN
                W1 := W2;
                READ(W2);
                WHILE (W2 = ' ') AND (NOT EOLN(INPUT)) {Check spaces}
                DO
                  BEGIN
                    W1 := W2;
                    READ(W2);
                  END;
                IF W2 <> 'E'
                THEN
                  WRITE('  ', W2)
                ELSE
                  WRITE(W2)
              END
            ELSE              
              WRITE('  ', W2)
        END
      ELSE
        IF W2 = 'E'
        THEN
          BEGIN
            W1 := W2;
            READ(W2);
            IF (W1 = 'E') AND (W2 = 'N') {Check END.}
            THEN
              BEGIN
                A1 := W1;
                W1 := W2;
                READ(W2);
                IF (W1 = 'N') AND (W2 = 'D')
                THEN
                  BEGIN
                    A2 := W1;
                    W1 := W2;
                    READ(W2);
                    IF (W2 = ' ') OR (W2 = '.')
                    THEN
                      BEGIN
                        WHILE (W2 = ' ') AND (NOT EOLN(INPUT)) {Check spaces}
                        DO
                          BEGIN
                            W1 := W2;
                            READ(W2);
                          END;
                        IF W2 = '.'
                        THEN
                        BEGIN   
                          WRITELN;
                          WRITE(A1, A2, 'D', W2);
                        END 
                      END
                    ELSE
                      BEGIN
                        WRITE(A1, A2, W1, W2);
                        IF W2 = ';' {Check ;}
                        THEN
                          BEGIN
                            W1 := W2;
                            READ(W2);
                            WHILE (W1 = ';') AND (W2 = ';') {Check ;;;;;}
                            DO
                              BEGIN
                                WRITE(W2);
                                W1 := W2;
                                READ(W2)
                              END;
                            WRITELN;
                            IF W2 = 'E' {Check ;END}
                            THEN
                              WRITE('  ', W2)
                            ELSE
                              IF W2 = ' ' {Check ; END}
                              THEN
                                BEGIN
                                  W1 := W2;
                                  READ(W2);
                                  WHILE (W2 = ' ') AND (NOT EOLN(INPUT)) {Check spaces}
                                  DO
                                    BEGIN
                                      W1 := W2;
                                      READ(W2);
                                    END;
                                  IF W2 <> 'E'
                                  THEN
                                    WRITE('  ', W2)
                                  ELSE
                                    WRITE('  ', W2)
                                END
                              ELSE              
                                WRITE('  ', W2)
                          END
                      END
                  END   
                ELSE
                  WRITE(A1, W1, W2);
              END
            ELSE
              WRITE(W1, W2)
          END
        ELSE
          WRITE(W2)  
    END; 
  WRITELN 
END. {FormattingCode}
