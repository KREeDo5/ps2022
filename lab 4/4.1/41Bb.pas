PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящщего от величины на входе: '...by land' для 1, '...by sea' для 2
и '...by air' для 3 иначе печатать сообщения об ошибке}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns < '1'
  THEN
    WRITELN('The North Church shows only ''', Lanterns, '''.')
  ELSE
    IF Lanterns > '3'
    THEN
      WRITELN('The North Church shows only ''', Lanterns, '''.')
    ELSE
      WRITE('The British are coming');
  IF Lanterns = '1'
  THEN
    WRITELN(' by land.')
  ELSE
    IF Lanterns = '2'
    THEN
      WRITELN(' by sea.')
    ELSE
      IF Lanterns = '3'
      THEN
        WRITELN(' by air.')
END. {PaulRevere}
