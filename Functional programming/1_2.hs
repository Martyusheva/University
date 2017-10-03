-- Возведение целого числа в целую степень
t_pow :: Integer -> Integer -> Integer
t_pow m n | n < 0 = error "Negative component"
          | n == 0 = 1
          | n == 1 = a
          | n `mod` 2 == 1 = m * t_pow m (n-1)
          | n `mod` 2 == 0 = t_pow (m*m) (div n 2)

-- Наибольший общий делитель двух целых чисел
t_nod :: Integer -> Integer -> Integer
t_nod a b | (a < 0 || b < 0) = t_nod (abs a) (abs b)
          | a < b = t_nod b a
          | a == b = a
          | (a > b && b /= 0) = if (a `mod` b == 0) then b else t_nod b (mod a b)

-- Проверка корректности даты
t_date :: Int -> Int -> Int -> Bool
t_date day month year | day < 1 || month < 1 || month > 12 || year < 1 = False
                      | month == 2 = if (year `mod` 4 == 0) then day <= 29 else day <= 28
                      | otherwise = day <= numDaysInMonth !! (month-1)
                      where numDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]