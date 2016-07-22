def missing(arr)
  result = []
    # subtract the last number in the array from the first to find the number of times to iterate
  arr.each do |orig_n|
    n = orig_n # -2
    loop do 
      break if arr.include?(n.next) || n == arr.last
      result << n.next if !arr.include?(n.next) # -1
      n += 1 if !arr.include?(n.next) # -1
    end
  end
  result
end



p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) #== []
p missing([1, 5])# == [2, 3, 4]
p missing([6]) #== []