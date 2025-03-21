# @param {Integer} n
# @return {Boolean}
def is_armstrong(n)
  digit = 0
  n_temp = n
  n2 = n
  while n > 0 do
      n = n/10
      digit +=1
  end
  power = digit
  sum = 0
  while digit > 0 do
      digit -=1
     
      num = (n_temp / (10**digit))
      puts num ** power
      sum = sum + ( num ** power)
      n_temp = n_temp % (10**digit)
      
      # puts n_temp
  end

  return sum == n2
end