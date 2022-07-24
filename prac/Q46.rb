# frozen_string_literal: true

# 判別式
def discriminant(a, b, c)
  b**2 - 4 * a * c
end

# NOTE: 2次方程式
def quadratic(a, b, c)
  d = discriminant(a, b, c)
  a2 = a * 2

  if d.positive?
    x1 = ((-b + Math.sqrt(d)) / (a * 2)).round(2)
    x2 = ((-b - Math.sqrt(d)) / (a * 2)).round(2)

    [x1, x2]
  elsif d.zero?
    x1 = ((-b / (a * 2))).round(2)

    [x1]
  else
    # NOTE: Math.sqrtの返り値がunsignedのため, 結果に-1をかけている
    x1 = Complex(Rational(-b, a2), Rational(Math.sqrt(d * -1), a2))
    x2 = Complex(Rational(-b, a2), Rational(- Math.sqrt(d * -1), a2))

    [x1, x2]
  end
end

# ----------------------------------
# ans = quadratic(1, 1, -6)
# ans = quadratic(6, 7, -3)
# ans = quadratic(1, -5, 4)
# ans = quadratic(1, 8, 16)
# ans = quadratic(2, 4, 1)
# ans = quadratic(9, 6, 1)
ans = quadratic(3, 3, 2)

puts "x1: #{ans[0]}"
puts "x2: #{ans[1].nil? ? ans[0] : ans[1]}"
