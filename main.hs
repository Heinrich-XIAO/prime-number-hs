primes = filterPrime [2..] where
  filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]

printPrimes :: Int -> IO()
printPrimes n = do
  print (primes !! n)
  printPrimes (n+1)

main = do
  printPrimes 0
