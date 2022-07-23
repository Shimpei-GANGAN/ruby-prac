# frozen_string_literal: true

# Q15
# x = 8
# if x >= 1 && x <= 10
#   printf("%dは1から10の間にあります\n", x)
# else
#   printf("%dは1から10の間にありません\n", x)
# end

# Q21
# i = 0
# sum = 0
# while i <= 10
#   sum += i
#   puts(sum)
#   i += 1
# end
# printf("finished:%d\n", sum)

# Q23
tango = ["knowledge", "information", "system", "library", "metadata"]

while true
  puts("単語を入力してください")
  puts("終わる時は . (ピリオド)を入力してください")
  a = gets.chomp
  if a == "."
    break
  end

  j = 0
  while j < tango.size
    if a == tango[j]
      printf("%sは辞書に登録されています\n", a)
      break
    end
  j += 1
  end
  if j == tango.size
    printf("%sを登録します\n", a)
    tango.push(a)
  end
end

tango.each{|value|
  puts(value)
}