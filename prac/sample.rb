# frozen_string_literal: true

# Q15
# x = 8
# if x >= 1 && x <= 10
#   printf("%dは1から10の間にあります\n", x)
# else
#   printf("%dは1から10の間にありません\n", x)
# end

# Q21
i = 0
sum = 0
while i <= 10
  sum += i
  puts(sum)
  i += 1
end
printf("finished:%d\n", sum)
