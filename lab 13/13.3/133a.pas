PROGRAM Split(INPUT,OUTPUT);
  {Копирует INPUT в OUTPUT,сначала нечетные,а затем четные
   элементы}
VAR
  Ch,Next: CHAR;
  Odds,Evens: TEXT;
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
        {Прочитать Ch, записать в файл, выбранный через
         Next,переключить Next}
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
          WRITE(Next)
        END;
      READLN(F);
      WRITELN(Odds);
      WRITELN(Evens);
      
    END;
  WRITELN(Odds);
  WRITELN(Evens)
END;

BEGIN
  {Разделяет INPUT в Odds и Evens}
  InputDivisioN(INPUT, Odds, Evens);
  WRITELN
END.
