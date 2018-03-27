# Code Fights - The Core - Problem 49 - Rectangle Rotation

def rectangleRotation(a, b)

end

p rectangleRotation(6, 4)             # => 23
p rectangleRotation(30, 2)            # => 65
p rectangleRotation(8, 6)             # => 49
p rectangleRotation(16, 20)           # => 333

Input
- Integers (a) and (b) representing the sides of a rectangle on a Cartesian plane
  with its center (diagonal intersect) at (0, 0) and tipped at a 45* angle
  - Integers are even

Output
- An integer representing the number of points with integer coordinates that are
  located inside the rectangle

Approach
- (a - 1) * (b - 1) + (a - 2) * (b - 2)
