PROGRAM DataArrays
  IMPLICIT NONE

  CHARACTER(3), DIMENSION(4) :: bits
  CHARACTER(1), DIMENSION(4) :: numbers
  INTEGER :: i

  ! Definir los datos para bits
  DATA bits / '100', '101', '110', '111' /

  ! Definir los datos para numbers
  DATA numbers / '4', '5', '6', '7' /

  ! Imprimir los valores de bits
  PRINT *, 'Bits:'
  DO i = 1, SIZE(bits)
    PRINT *, '  Bit:', TRIM(bits(i))
  END DO

  ! Imprimir los valores de numbers
  PRINT *, 'Numbers:'
  DO i = 1, SIZE(numbers)
    PRINT *, '  Number:', TRIM(numbers(i))
  END DO

END PROGRAM DataArrays
