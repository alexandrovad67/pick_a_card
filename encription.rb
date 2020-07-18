require 'digest'

puts "Введите фразу для шифрования:"

input = STDIN.gets.chomp

puts "Каким способом зашифрованить?"
puts "1. MD5\n2. SHA1"

input_shifr = STDIN.gets.chomp.to_i

until input_shifr.between?(1,2)
  puts "Введите 1 или 2"
  input_shifr = STDIN.gets.chomp.to_i
end

puts "Вот что получилось:"

case input_shifr
when 1
  puts Digest::MD5::hexdigest(input)
when 2
  puts Digest::SHA1::hexdigest(input)
end