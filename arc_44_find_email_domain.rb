# Code Fights - Arcade - Problem 44 - Find Email Domain

def findEmailDomain(address)
  domain = address.reverse
  idx = domain.index("@")
  
  domain.slice(0..idx - 1).reverse
end

p findEmailDomain("prettyandsimple@example.com")                      # => 'example.com'
p findEmailDomain("<>[]:,;@\"!#$%&*+-/=?^_{}| ~.a\"@example.org")     # => 'example.org'
p findEmailDomain("someaddress@yandex.ru")                            # => 'yandex.ru'

# Input
# - A valid email address in string form (can include special characters in name)

# Output
# - A string containing only the domain (portion after @) of the address

# Approach
# - Reverse string
# - Find index of first '@' (idx)
# - Slice string from 0 to idx
# - Reverse string back and return
