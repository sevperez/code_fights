# Code Fights - Arcade - Problem 8 - matrixElementsSum

def matrixElementsSum(matrix)
  haunted_locations = []
  
  matrix.map! do |rooms|
    rooms.map.with_index do |room, location|
      if room == 0
        haunted_locations << location
        nil
      elsif haunted_locations.include?(location)
        nil
      else
        room
      end
    end
  end
  
  suitable_rooms = matrix.flatten.compact
  
  suitable_rooms.empty? ? 0 : suitable_rooms.reduce(:+)
end



matrix = [[0, 1, 1, 2], 
          [0, 5, 0, 0], 
          [2, 0, 3, 3]]
          
p matrixElementsSum(matrix)
