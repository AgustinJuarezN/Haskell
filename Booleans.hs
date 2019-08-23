module Booleans where
import Prelude (Show)

data Bool = True | False
    deriving (Show)

not :: Bool -> Bool
not = \x -> case x of {
        True -> False;
        False -> True;
    }      
-- not2 (Pattern Matching):
not2 :: Bool -> Bool
not2 True = False
not2 False = True

and :: Bool -> Bool-> Bool
and = \x -> \y -> case x of {
    False -> False;
    True -> y;
}
-- and2 (Pattern Matching):
and2 :: Bool -> Bool -> Bool
and2 True True = True
and2 True False = False
and2 False True = False
and2 False False = False

or :: Bool -> Bool -> Bool
or = \x -> \y -> case x of {
    True -> True;
    False -> y;
}
-- or2 (Pattern Matching):

or2:: Bool -> Bool -> Bool
or2 True True = True
or2 True False = True
or2 False True = True
or2 False False = False

entonces :: Bool -> Bool -> Bool
entonces = \x -> \y -> case x of {
    True ->  y;
    False -> True;
}
-- entonces2 (Pattern Matching):

entonces2 :: Bool -> Bool -> Bool
entonces2 True True = True
entonces2 True False = False
entonces2 False True = True
entonces2 False False = True

sii :: Bool -> Bool -> Bool
sii = \x -> \y -> case x of {
    True -> y;
    False -> not y;
}

-- sii2 (Pattern Matching):

sii2 :: Bool -> Bool -> Bool
sii2 True True = True
sii2 True False = False
sii2 False True = False
sii2 False False = True

-- and 1 line: ( not (a and b) = not a or not b )

andline :: Bool -> Bool -> Bool
andline = \x -> \y -> not (or (not x) (not y))


