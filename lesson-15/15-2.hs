data Circle = Circle { radius :: Double }
data Square = Square { size :: Double }
data Rectangle = Rectangle { width :: Double, height :: Double }

data Shape = CircleItem Circle
           | SquareItem Square
           | RectangleItem Rectangle

area :: Shape -> Double
area (CircleItem c) = r * r * 3.14 where r = radius c
area (SquareItem s) = w * w where w = size s
area (RectangleItem r) = width r * height r
