# Code Fights - Arcade - Problem 19 - areEquallyStrong

def areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight)
  [yourLeft, yourRight].sort == [friendsLeft, friendsRight].sort
end

yourLeft = 10
yourRight = 15
friendsLeft = 15
friendsRight = 10
p areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight) #== true

yourLeft = 15
yourRight = 10
friendsLeft = 15
friendsRight = 10
p areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight) #== true

yourLeft = 15
yourRight = 10
friendsLeft = 15
friendsRight = 9
p areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight) #== false
