# Code Fights - Arcade - Problem 47 - Is MAC48 Address?

def isMAC48Address(inputString)
  /\A([a-f0-9]{2}-){5}[a-f0-9]{2}\z/i.match?(inputString)
end

p isMAC48Address("00-1B-63-84-45-E6")     # => true
p isMAC48Address("Z1-1B-63-84-45-E6")     # => false
p isMAC48Address("not a MAC-48 address")  # => false
p isMAC48Address("02-03-04-05-06-07-")    # => false

# Input
# - A string

# Output
# - A boolean describing whether the provided string is a MAC48 address
#   - Rules:
#     - MAC48 addresses have six groups of two hexadecimal digits, comma separated

# Approach
# - Regex