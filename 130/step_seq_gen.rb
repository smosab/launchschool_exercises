def step(start_val, end_val, step_val)
  loop do
    yield(start_val)
    start_val += step_val
    break if start_val > end_val
  end
 step_val
end



p step(1, 10, 3) { |value| puts "value = #{value}" }