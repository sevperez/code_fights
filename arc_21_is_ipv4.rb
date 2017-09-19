# Code Fights - Arcade - Problem 21 - isIPv4Address

def isIPv4Address(inputString)
  octets = inputString.split(".")
  return false if octets.length != 4
  
  octets.each do |ele|
    int = ele.to_i
    return false if int.to_s != ele || int < 0 || int > 255
  end
  
  true
end

inputString = "172.16.254.1"
p isIPv4Address(inputString) #== true

inputString = "172.316.254.1"
p isIPv4Address(inputString) #== false

inputString = ".254.255.0"
p isIPv4Address(inputString) #== false
