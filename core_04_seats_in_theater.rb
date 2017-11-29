# Code Fights - The Core - Problem 4 - Seats in Theater

def seatsInTheater(nCols, nRows, col, row)
  (nCols - col + 1) * (nRows - row)
end

p seatsInTheater(16, 11, 5, 6)    # => 96
p seatsInTheater(1, 1, 1, 1)      # => 0
p seatsInTheater(13, 6, 8, 3)     # => 18
p seatsInTheater(60, 100, 60, 1)  # => 99


# Input
# - An integer (nCols), representing number of columns
# - An integer (nRows), representing number of rows
# - An integer (col), representing the column number of your seat
# - An integer (row), representing the row number of your seat

# Output
# - An integer representing the total number of people who will be distrubed if you leave
#   - Rules:
#     - A seat is "disturbed" if seatCol > col && seatRow > row
#       - That is "behind and to the left" of your seat

# Approach
# - disturbed = (nCol - col + 1) * (nRow - row)
