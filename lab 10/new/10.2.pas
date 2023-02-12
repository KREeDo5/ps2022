PROGRAM CodeRebranding(INPUT, OUTPUT);
VAR 
  Ch2, MOS: CHAR;
BEGIN
  Ch2 := ' ';
  MOS := 'M';       
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(Ch2);
      MOS := 'M';
      IF(Ch2 = 'B')
      THEN
        BEGIN
          WRITE(Ch2);
          READ(Ch2);
          WHILE(MOS <> 'S')
          DO
            BEGIN
              IF(Ch2 <> 'E') AND (Ch2 <> 'G') AND (Ch2 <> 'I') AND (Ch2 <> 'N')
              THEN
                BEGIN
                  WRITE(Ch2);
                  MOS := 'S'
                END
              ELSE
                IF(Ch2 <> 'N')
                THEN
                  BEGIN
                    WRITE(Ch2);
                    READ(Ch2)
                  END
                ELSE
                  BEGIN
                   WRITELN(Ch2);
                   WRITE('  ');   
                   MOS := 'S'
                  END;  
            END;      
        END;
      IF(Ch2 = ' ')
      THEN
        WHILE(Ch2 = ' ') AND (NOT EOLN(INPUT))
        DO
          READ(Ch2);  
      IF(Ch2 = '(')
      THEN
        BEGIN
          WRITE(Ch2);
          READ(Ch2);
          WHILE(Ch2 <> ')')
          DO
            BEGIN
              IF(Ch2 = ' ')
              THEN
                WHILE(Ch2 = ' ')
                DO
                  READ(Ch2);
              WRITE(Ch2);    
              IF(Ch2 = ',') OR (Ch2 = '.')
              THEN
                WRITE(' ');
              READ(Ch2)    
            END;
          WRITE(Ch2);    
          MOS := 'S'      
        END;    
      IF(Ch2 = ';')
      THEN
        BEGIN
          WRITELN(Ch2);
          WRITE('  ');
          MOS := 'S'
        END;
      IF(Ch2 = 'E')
      THEN
        BEGIN
          READ(Ch2);
          IF(Ch2 = 'N')
          THEN
            BEGIN
              READ(Ch2);
              IF(Ch2 = 'D')
              THEN
                BEGIN
                  WRITELN;
                  WRITE('END');
                  MOS := 'S'
                END
              ELSE
                BEGIN
                  WRITE('EN', Ch2);
                  MOS := 'S'
                END    
            END
          ELSE
            BEGIN
              WRITE('E', Ch2);
              MOS := 'S'
            END    
        END;    
      IF(Ch2 = '.')
      THEN
        WRITELN(Ch2)
      ELSE
        IF(MOS = 'M')
        THEN
          WRITE(Ch2)    
    END  
END.
