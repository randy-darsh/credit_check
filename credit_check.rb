def number_is_luhn_valid?(credit_card_number)
  cc_digits = credit_card_number.to_s.reverse.chars.map(&:to_i)
  check_sum = 0

  cc_digits.each_slice(2) do |odd, even|
    check_sum += odd
    next unless even
    even *= 2
    even = even.divmod(10).inject(:+) if even > 9
    check_sum += even
  end

  return check_sum.modulo(10) == 0
end
