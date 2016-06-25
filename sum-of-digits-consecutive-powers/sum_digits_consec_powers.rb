def sum_dig_pow(a, b)
  range = (a..b).to_a
  solution = []

  range.each_with_index do |num, index|
    digits = num.to_s.chars.map(&:to_i)
    sum = 0
    digits.each_with_index do |digit, index|
      sum += digit ** (index + 1)
    end
    solution << num if sum == num
  end

  return solution
end
