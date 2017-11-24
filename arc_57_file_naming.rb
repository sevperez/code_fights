# Code Fights - Arcade - Problem 57 - File Naming

def fileNaming(names)
  valid = {}
  
  names.each do |current|
    unless valid.keys.include?(current)
      valid[current] = 0
    else
      valid[current] += 1
      dup_name = get_next_name(current, valid[current], valid.keys)
      
      valid[dup_name] = 0
    end
  end
  
  valid.keys
end

def get_next_name(name, name_count, list)
  k = name_count
  
  loop do
    unless list.include?("#{name}(#{k})")
      return "#{name}(#{k})"
    end
    
    k += 1
  end
end


p fileNaming(["doc", "doc", "image", "doc(1)", "doc"])  
        # => ["doc", "doc(1)", "image", "doc(1)(1)", "doc(2)"]
        
p fileNaming(["dd", "dd(1)", "dd(2)", "dd", "dd(1)", "dd(1)(2)", "dd(1)(1)", "dd", "dd(1)"])
        # => ["dd", "dd(1)", "dd(2)", "dd(3)", "dd(1)(1)", "dd(1)(2)", "dd(1)(1)(1)", "dd(4)", "dd(1)(3)"]

# Input
# - An array of strings, each representing a proposed file name

# Output
# - An array of strings, each representing a valid file name
#   - Rules
#     - Files may not have the same name
#     - If a file name is taken, the second version will be appended with (k)
#       - Where k is the smallest positive integer such that the name is not used
#       - Ex: "doc(1)" if "doc" is already taken, then "doc(2)" for the next instance

# Approach
# - Initialize valid array
# - Iterate over names array
#   - If valid does not include current, push current to valid
#   - If valid includes current
#     - Initialize counter (k) to 1
#     - If valid includes current(k), increment k
#     - Else, push current(k) to valid
# - Return valid
