def create_cipher(msg, shift)
  code = ''
  letters = *("a".."z")
  msg.each do |letter|
    if letters.include?(letter.downcase)
      shift.times {letter = letter.next}
    end
    code += letter[-1]
  end
  return code
end

print("Please enter message: ")
msg = gets.chomp.split(//)

print("Please enter shift factor: ")
shift = gets.chomp.to_i

puts create_cipher(msg, shift)