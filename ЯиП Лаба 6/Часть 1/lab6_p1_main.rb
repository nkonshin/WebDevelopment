def schet(e)
  n = 1.0
  k = 0
  y = n / (n * n + 2)
  while y >= e
    n += 1
    y = n / (n * n + 2)
    k += 1
      end
  y
end
