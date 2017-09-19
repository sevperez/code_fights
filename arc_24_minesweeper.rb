# Code Fights - Arcade - Problem 24 - Minesweeper

def minesweeper(matrix)
  matrix.map.with_index do |row, row_idx|
    row.map.with_index do |box, col_idx|
      check_surrounding_boxes(matrix, row_idx, col_idx)
    end
  end
end

def check_surrounding_boxes(matrix, current_row, current_col)
  counter = 0
  
  matrix.each_with_index do |row, row_idx|
    # Skip if more than 1 row away
    next if (row_idx - current_row).abs > 1
    
    row.each_with_index do |box, col_idx|
      # Skip if more than 1 col away or looking at current box
      next if (col_idx - current_col).abs > 1
      next if current_row == row_idx && current_col == col_idx
      
      counter += 1 if box == true
    end
  end
  
  counter
end

matrix = [[true, false, false],
          [false, true, false],
          [false, false, false]]

p minesweeper(matrix) #== [[1, 2, 1],
                         # [2, 1, 1],
                         # [1, 1, 1]]

  