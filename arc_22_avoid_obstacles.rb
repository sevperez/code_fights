# Code Fights - Arcade - Problem 22 - avoidObstacles

def avoidObstacles(obstacles)
  obstacles.sort!
  empty_slots = []
  
  # build array of empty slots, including first slot after end of obstacles
  2.upto(obstacles.last + 1) do |slot|
    empty_slots << slot unless obstacles.include?(slot)
  end

  # check for an empty slot that only has multiples that are also empty
  minimal_jump = 0
  empty_slots.each do |slot|
    current_position = slot
    
    valid = true
    while (current_position < empty_slots.last)
      current_position += slot
      break if current_position >= empty_slots.last
      
      unless empty_slots.include?(current_position)
        valid = false
        break
      end
    end
    
    if valid == true
      minimal_jump = slot
      break
    end
  end
  
  minimal_jump
end


inputArray = [1, 5, 3, 6, 7, 9]
p avoidObstacles(inputArray) #== 4

inputArray = [2, 3]
p avoidObstacles(inputArray) #== 4

inputArray = [1, 4, 10, 6, 2]
p avoidObstacles(inputArray) #== 7

inputArray = [19, 32, 11, 23]
p avoidObstacles(inputArray) #== 3
