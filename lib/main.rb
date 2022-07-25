require './lib/caesar_cipher'

def message
  puts 'What string you want to code?'
  gets.chomp
end

def shift_factor
  puts 'For how much do you want to shift it?'
  gets.chomp.to_i
end

caesar_cipher = CaesarCipher.new
puts caesar_cipher.encrypt(message, shift_factor)
