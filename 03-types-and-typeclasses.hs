{-
 - For this exercise, we are dealing with a type for colours of the rainbow
 - The typeclass is defined here, and note its English spelling.
 - For more information on how this is done, look ahead to:
 - http://learnyouahaskell.com/making-our-own-types-and-typeclasses
 -
 - Have a play with the Colour in ghci, try the succ and pred functions and so on.
 -}
data Colour = Red | Orange | Yellow | Green | Blue | Indigo | Violet
  deriving (Eq, Ord, Show, Bounded, Enum)

{-
 - Again, you should be able to write these functions in one line,
 - using the information from the chapter http://learnyouahaskell.com/types-and-typeclasses
 - and the chapter before
 -}

{-
 - The Colour typeclass is of type Ord
 - What is the "first" (or least) colour
 -}
firstColour = minBound :: Colour -- gives the "smallest" colour

-- List the colours in reverse order
reverseColourOrder = reverse [minBound .. maxBound] :: [Colour]

{-
 - Mix two colours together, to produce the average value of the two.
 - Example: paintMix Orange Green = Yellow
 - If necessary, favour the "higher" value when computing the average.
 - For example: paintMix Green Violet = Indigo
 - Hint: Integer division can be performed with the quot function: quot 7 2 = 3
 -}
paintMix c1 c2 = toColour (quot (toInt c1 + toInt c2 + 1) 2)

-- helper functions defined using pattern matching, not sure how to do this without
toInt Red = 0
toInt Orange = 1
toInt Yellow = 2
toInt Green = 3
toInt Blue = 4
toInt Indigo = 5
toInt Violet = 6

toColour 0 = Red
toColour 1 = Orange
toColour 2 = Yellow
toColour 3 = Green
toColour 4 = Blue
toColour 5 = Indigo
toColour 6 = Violet
