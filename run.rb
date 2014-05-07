require_relative 'nums'

A = 'Fizz'
B = 'Buzz'
C = 'Whizz'

begin
  print "Please input 3 different numbers which in range 1..9 (like: 3,5,7) : "
  nums = gets
end while !Nums.is_valid?(nums)

nums = nums.split(',')
a = nums[0].to_i
b = nums[1].to_i
c = nums[2].to_i

(1).upto(100) do |i|
  if i.to_s.include?(a.to_s) 
    puts A
  else 
    s = Nums.is_times(i, a, A) + Nums.is_times(i, b, B) + Nums.is_times(i, c, C)
    s = nil if s.empty?
    puts s || i 
  end
end
