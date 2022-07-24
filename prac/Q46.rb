# frozen_string_literal: true

# 判別式
def discriminant(a, b, c)
  b**2 - 4 * a * c
end

# NOTE: 2次方程式
def quadratic(a, b, c)
  d = discriminant(a, b, c)

  if d.positive?
    x1 = ((-b + Math.sqrt(d)) / (a * 2)).round(2)
    x2 = ((-b - Math.sqrt(d)) / (a * 2)).round(2)

    [x1, x2]
  elsif d.zero?
    x1 = ((-b / (a * 2))).round(2)
    [x1]
  else
    '実数解なし'
  end
end

# ----------------------------------
puts quadratic(1, 1, -6).to_s
puts quadratic(6, 7, -3).to_s
puts quadratic(1, -5, 4).to_s
puts quadratic(1, 8, 16).to_s
puts quadratic(2, 4, 1).to_s
puts quadratic(9, 6, 1).to_s
puts quadratic(3, 3, 2).to_s