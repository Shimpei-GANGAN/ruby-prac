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
# tango = ["knowledge", "information", "system", "library", "metadata"]

# while true
#   puts("単語を入力してください")
#   puts("終わる時は . (ピリオド)を入力してください")
#   a = gets.chomp
#   if a == "."
#     break
#   end

#   j = 0
#   while j < tango.size
#     if a == tango[j]
#       printf("%sは辞書に登録されています\n", a)
#       break
#     end
#   j += 1
#   end
#   if j == tango.size
#     printf("%sを登録します\n", a)
#     tango.push(a)
#   end
# end

# tango.each{|value|
#   puts(value)
# }

# Q24
# str = "Hi\n"
# print(str, "!\n")

# str1 = str.chomp
# str2 = str.chomp.chomp
# str3 = str.chop
# str4 = str.chop.chop

# print(str1, "!\n")
# print(str2, "!\n")
# print(str3, "!\n")
# print(str4, "!\n")

# Q25
# puts('名前を入力してください.')
# name = gets.chomp
# printf("%sさん, こんにちは\n", name)

# Q27
# nums = [1, 2, 3]
# strs = ["a", "b", "c"]

# nums.each_with_index do |num, index|
#   puts "#{index + 1}番目: #{num}"
# end
# puts("---------------------------------")
# strs.each_with_index do |str, index|
#   puts "#{index + 1}番目: #{str}"
# end

# Q28
# name = Array.new(3, "")
# puts "[1回目] 名前を入力してください"
# name[0] = gets.chomp

# puts "[2回目] 名前を入力してください"
# name[1] = gets.chomp

# puts "[3回目] 名前を入力してください"
# name[2] = gets.chomp

# puts "#{name[0]}さん、おはようございます"
# puts "#{name[1]}さん、こんにちは"
# puts "#{name[2]}さん、こんばんは"

# Q29
# fruit_list = Array.new(0, "")

# i = 0
# while i < 5
#   print("くだもの名を入力してください(.を入力したら終了する)> ")
#   fruit = gets.chomp
#   if fruit == "."
#     break
#   end

#   fruit_list[i] = fruit
#   i += 1
# end

# puts "-----------------------------------"
# i = 0
# while i < fruit_list.size
#   puts "フルーツ: #{fruit_list[i]}"
#   i += 1
# end
# puts "-----------------------------------"

# Q30
# eng = { 'かえる' => 'frog', 'はち' => 'bee', 'かも' => 'duck',
#         'せみ' => 'cicada' }

# print('選んでください (かえる, はち, かも, せみ) > ')
# str = gets.chomp
# puts (eng[str]).to_s
# puts '-----------------------------------'

# eng.each do |key, value|
#   puts "#{key}:#{value}"
# end

# Q32
# def puts_hash(hash)
#   puts "size: #{hash.size}"
#   puts "empty?: #{hash.empty?}"
#   hash.each do |key, value|
#     puts "#{key}:#{value}"
#   end
#   puts "------------------------------------"
# end

# eng = Hash.new
# puts_hash(eng)

# eng["かえる"] = "frog"
# eng["かも"] = "duck"
# eng["せみ"] = "cicada"

# puts_hash(eng)

# eng.delete("かも")
# puts_hash(eng)

# Q33
# def zeikomi(nedan)
#   printf("%d円\n", nedan * 1.1)
# end

# zeikomi(300)
# zeikomi(2600)

# Q34
# def san_tan_gen(doushi)
#   "#{doushi}s"
# end

# puts '動詞を入力してください > '
# doushi = gets.chomp
# puts "3人称単数現在の場合は, #{san_tan_gen(doushi)}としてください"

# Q35
# def max(a, b)
#   if a > b
#     a
#   else
#     b
#   end
# end

# puts max(2, 3).to_s

# Q37
# print('文字列を入力してください. > ')
# str = gets.chomp

# if /^$/ =~ str
#   puts 'マッチしたで'
# else
#   puts 'マッチせえへんで'
# end

# Q40
puts 'Q40'
filename = 'foo.txt'
out = open(filename, 'w')
out.puts('これはテストです')
out.puts('これはテストですです')
out.close

# Q42
puts 'Q42'
filename = 'foo.txt'
input = open(filename, 'r')
line = input.gets
line.chomp!
puts "入力内容は「#{line}」です。"
input.close

# Q43
puts 'Q43'
io = open('foo.txt', 'r')
loop do
  line = io.gets
  print(line)
  break if line.nil?
end
io.close

# Q44
puts 'Q44'
io = open('foo.txt', 'r')
while line = io.gets
  print(line)
end
io.close

# Q45
puts 'Q45'
open('foo.txt', 'r') do |io|
  while line = io.gets
    print(line)
  end
end
