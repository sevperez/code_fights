# Code Fights - Arcade - Problem 29 - chessBoardCellColor

def chessBoardCellColor(cell1, cell2)
  cell_color(cell1) == cell_color(cell2)
end

def cell_color(cell)
  col, row = cell.split('')
  
  if row.to_i.odd? && col =~ /[aceg]/i
    "black"
  elsif row.to_i.odd?
    "white"
  elsif row.to_i.even? && col =~ /[aceg]/i
    "white"
  else
    "black"
  end
end

cell1 = "A1"
cell2 = "C3"
p chessBoardCellColor(cell1, cell2) #== true

cell1 = "A1"
cell2 = "H3"
p chessBoardCellColor(cell1, cell2) #== false
