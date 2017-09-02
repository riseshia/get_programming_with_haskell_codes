myPad :: String
myPad = "Shhhhh"

myPlainText :: String
myPlainText = "Haskell"

applyOTP' :: String -> Stirng -> [Bits]
applyOTP' pad plaintext = map (\pair -> (fst pair) `xor` (snd pair))
                            (zip padBits plaintextBits)
  where padBits = map charToBits pad
        plaintextBits = map charToBits plaintext

applyOTP :: String -> String -> String
applyOTP pad plaintext = map bitsToChar bitList
  where bitList = applyOTP' pad plaintext

encoderDecoder :: String -> String
encoderDecoder = applyOTP myPad
