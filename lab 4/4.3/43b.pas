PROGRAM SarahRevere(INPUT, OUTPUT);
{����� ᮮ�饭�� � ⮬ ��� ���� ��⠭��, � ����ᨬ���
�� ⮣�, ���� �� �室� ����砥��� 'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {���樠������ W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN

      {������� ����, �஢����� ����� ������}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N';

      {�஢�ઠ ���� ���  'land'}
      IF W1 = 'l'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'n'
          THEN
            IF W4 = 'd'
            THEN {'land' �������}
              Looking := 'L';

      {�஢�ઠ ���� ��� 'sea'}
      IF W1 = 's'
      THEN
        IF W2 = 'e'
        THEN
          IF W3 = 'a'
          THEN {'sea' �������}
            Looking := 'S'
    END;

  {ᮧ���� ᮮ�饭�� Sarah}
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END. {Sarah revere}



