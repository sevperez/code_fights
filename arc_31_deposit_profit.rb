# Code Fights - Arcade - Problem 31 - depositProfit

def depositProfit(deposit, rate, threshold)
  total = deposit
  years = 0
  
  puts "total: #{total}, years: #{years}"
  
  while (total < threshold)
    total += total * rate / 100.0
    years += 1
    puts "total: #{total}, years: #{years}"
  end
  
  years
end

deposit = 100
rate = 20
threshold = 170
p depositProfit(deposit, rate, threshold) #== 3
