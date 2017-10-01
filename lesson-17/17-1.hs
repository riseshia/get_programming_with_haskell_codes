data Triple a = Triple a a a deriving Show

type Point3D = Triple Double

aPoint :: Point3D
aPoint = Triple 0.1 53.2 12.3

type FullName = Triple String
aPerson :: FullName
aPerson = Triple "Howard" "Phillips" "Lovecraft"

type Initials = Triple Char

initials :: Initials
initials = Triple 'H' 'P' 'L'

tripleMap :: (a -> b) -> Triple a -> Triple b
tripleMap func (Triple x y z) = Triple (func x) (func y) (func z)

data Box a = Box a deriving Show

boxMap :: (a -> b) -> Box a -> Box b
boxMap func (Box x) = Box (func x)
