PROGRAM PaulRevere(INPUT, OUTPUT);
{����� ᮮ⢥�����饣� ᮮ�饭��, �������饣� �� ����稭� �� �室�: '...by land' ��� 1, '...by sea' ��� 2
� '...by air' ��� 3 ���� ������ ᮮ�饭�� �� �訡��}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns > '0'
  THEN
    IF Lanterns < '4'
    THEN
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
      ELSE
        WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}
