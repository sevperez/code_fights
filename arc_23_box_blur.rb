# Code Fights - Arcade - Problem 23 - Box Blur

def boxBlur(image)
  blurred_image = []
  num_rows = image.length
  num_cols = image[0].length
  
  image.each_with_index do |row, row_idx|
    # crop top / bottom edges
    if row_idx == 0 || row_idx == num_rows - 1
      blurred_image << Array.new(num_cols)
    else
      blurred_row = []
      
      row.each_with_index do |pixel, col_idx|
        # crop left / right edges
        if col_idx == 0 || col_idx == num_cols - 1
          blurred_row << nil
        else
          surrounding_pixels = build_surrounding_pixels(image, [row_idx, col_idx])
          blurred_row << calculate_pixel_blur(surrounding_pixels)
        end
      end
      blurred_image << blurred_row
    end
  end
  
  blurred_image.map(&:compact).reject(&:empty?)
end

def calculate_pixel_blur(pixel_area)
  pixel_area.flatten.reduce(:+) / 9
end

def build_surrounding_pixels(image, pixel_location)
  row = pixel_location[0]
  col = pixel_location[1]
  
  [[image[row - 1][col - 1], image[row - 1][col], image[row - 1][col + 1]],
   [image[row][col - 1], image[row][col], image[row][col + 1]],
   [image[row + 1][col - 1], image[row + 1][col], image[row + 1][col + 1]]]
end

image = [[1, 1, 1], 
         [1, 7, 1], 
         [1, 1, 1]]
p boxBlur(image) #== [[1]]

image = [[0,18,9], 
         [27,9,0], 
         [81,63,45]]
p boxBlur(image) #== [[28]]
