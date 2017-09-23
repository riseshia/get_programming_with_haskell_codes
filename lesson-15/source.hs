data AuthorName = AuthorName String String

-- data Book = Author String String Int
-- or

-- data Book = Book { author :: AuthorName
--                  , isbn :: String
--                  , title :: String
--                  , year :: Int
--                  , price :: Double
--                  }

data Bool = False | True

type FirstName = String
type LastName = String
type MiddleName = String

data Name = Name FirstName LastName
          | NameWithMiddle FirstName MiddleName LastName
          | TwoInitialsWithLast Char Char LastName
          | FirstNameWithTwoInits FirstName Char Char

data Creator = AuthorCreator Author | ArtistCreator Artist
data Author = Author Name
data Artist = Person Name | Band String

hpLovecraft :: Creator
hpLovecraft = AuthorCreator (Author (TwoInitialsWithLast 'H' 'P' "Lovecraft"))

data Book = Book { author :: Creator
                 , isbn :: String
                 , bookTitle :: String
                 , bookYear :: Int
                 , bookPrice :: Double
                 }

data VinylRecord = VinylRecord { artist :: Creator
                               , recordTitle :: String
                               , recordYear :: Int
                               , recordPrice :: Double
                               }

data Pamphlet = Pamphlet { title :: String
                         , desc :: String
                         , contact :: String
                         }

data StoreItem = BookItem Book
               | RecordItem VinylRecord
               | ToyItem CollectibleToy
               | PamphletItem Pamphlet

data CollectibleToy = CollectibleToy { name :: String
                                     , description :: String
                                     , toyPrice :: Double
                                     }

price :: StoreItem -> Double
price (BookItem book) = bookPrice book
price (RecordItem record) = recordPrice record
price (ToyItem toy) = toyPrice toy
