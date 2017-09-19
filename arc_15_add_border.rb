# Code Fights - Arcade - Problem 15 - Add Border

def addBorder(picture)
  width = picture.first.length
  
  picture.unshift("*" * width)
  picture.push("*" * width)
  
  picture.map { |str| "*" + str + "*" }
end


picture = ["abc",
           "ded"]
           
p addBorder(picture) # == ["*****",
                     #     "*abc*",
                     #     "*ded*",
                     #     "*****"]