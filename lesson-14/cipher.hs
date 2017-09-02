class Cipher a where
  encode :: a -> String -> String
  decode :: a -> String -> String

instance Cipher Rot where
  encode :: Rot -> String -> String
  decode :: Rot -> String -> String

data OneTimePad = OTP String

instance Cipher OneTimePad where
  encode (OTP pad) text = applyOTP pad text
  decode (OTP pad) text = applyOTP pad text

myOTP :: OneTimePad
myOTP = OTP (cycle [minBound .. maxBound])
