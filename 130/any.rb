def any?(array)
  array.map {|e| yield(e)}.include?(true)
end

p any?([]) { |value| true }