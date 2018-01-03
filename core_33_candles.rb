# Code Fights - The Core - Problem 33 - Candles

def candles(candlesNumber, makeNew)
  totalBurned = 0
  leftovers = 0
  
  while candlesNumber > 0 || leftovers >= makeNew
    # make new candles from leftovers
    while leftovers >= makeNew
      leftovers -= makeNew
      candlesNumber += 1
    end
    
    # burn full candles
    while candlesNumber > 0
      candlesNumber -= 1
      leftovers += 1
      totalBurned += 1
    end
  end
  
  totalBurned
end

p candles(5, 2)     # => 9
p candles(1, 2)     # => 1
p candles(3, 3)     # => 4
p candles(11, 3)    # => 16

# Input
# - An integer (candlesNumber) representing the number of full candles
# - An integer (makeNew) representing the number required to make new candles

# Output
# - An integer representing the total number of candles that can be burned
#   - Rules:
#     - After a full candle has been burned, it creates a leftover candle
#     - Two leftover candles may be combined to remake a full candle

# Approach
# - Initialize totalBurned to 0
# - While candlesNumber > 0 || makeNew > 1
#   - If makeNew > 1
#     - While makeNew >= 2
#       makeNew -= 2
#       candlesNumber += 1
#     - While candlesNumber > 0
#       candlesNumber -= 1
#       makeNew += 1
#       totalBurned += 1
# - Return totalBurned
