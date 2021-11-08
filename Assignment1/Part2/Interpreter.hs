module Interpreter where

import AbsNumbers

eval :: Exp -> Integer
eval (Num n) = n
eval (Minus n m) = (eval n) - (eval m)
eval (Plus n m) = (eval n) + (eval m)
eval (Div n m) = (eval n) `div` (eval m)
eval (Mod n m) = (eval n) `mod` (eval m)
eval (Quot n m) = (eval n) `quot` (eval m)
eval (Times n m) = (eval n) * (eval m)
eval (Expo n m) = (eval n) ^ (eval m)
eval (Square n) =  (eval n) ^ (2)
eval (Negate n) = (0) - (eval n)