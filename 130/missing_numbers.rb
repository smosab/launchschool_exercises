def missing(arr)
  result = []
  arr.each do |orig_n|
    n = orig_n
    loop do
      break if arr.include?(n.next) || n == arr.last
      result << n.next if !arr.include?(n.next)
      n += 1 if !arr.include?(n.next)
    end
  end
  result
end


p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) #== []
p missing([1, 5])# == [2, 3, 4]
p missing([6]) #== []