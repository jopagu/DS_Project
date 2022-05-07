
module Main where

main :: IO()
main = print $ mySqrt 123.123 (123.123 / 10)

mySqrt :: Double -> Double -> Double
mySqrt val x
    |val == 0 = 0
    |not flag = mySqrt val (x + dx)
    |otherwise = x
    where diff = val - (x^2)
          dx = diff / (2 * x)
          flag = (myFabs diff) <= 0.00001

myFabs :: Double -> Double
myFabs x
    | x < 0 = -x
    | otherwise = x