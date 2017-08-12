type FirstName = String
type MiddleName = String
type LastName = String
data Name = Name FirstName LastName
          | NameWithMiddle FirstName MiddleName LastName

data Sex = Male | Female

data BloodType = BloodType ABOType RhType
data ABOType = A | B | AB | O
data RhType = Pos | Neg

data Patient = Patient { name :: Name
                       , sex :: Sex
                       , age :: Int
                       , height :: Int
                       , weight :: Int
                       , bloodType :: BloodType }

jackieSmith :: Patient
jackieSmith = Patient {name = Name "Jackie" "Smith"
                      , age = 43
                      , sex = Female
                      , height = 62
                      , weight = 115
                      , bloodType = BloodType O Neg }

