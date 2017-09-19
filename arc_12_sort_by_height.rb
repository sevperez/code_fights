# Code Fights - Arcade - Problem 12 - Sort by Height

def sortByHeight(a)
  sorted_people = a.select { |ele| ele > -1 }.sort
  
  current_person = 0
  a.map.with_index do |ele, idx|
    if ele == -1
      ele
    else
      current_person += 1
      sorted_people[current_person - 1]
    end
  end
end

a = [-1, 150, 190, 170, -1, -1, 160, 180]

p sortByHeight(a) # == [-1, 150, 160, 170, -1, -1, 180, 190]
