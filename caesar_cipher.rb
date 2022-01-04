require 'pry-byebug'

def user_input
  puts "What string you want to code?"
  unecrypted_string = gets.chomp
  puts "For how much do you want to shift it?"
  shift_factor = gets.chomp.to_i
  encrypt(unecrypted_string, shift_factor)
end

def encrypt(unecrypted_string, shift_factor)
  binding.pry
  unecrypted_array = unecrypted_string.chars
  puts unecrypted_string
  puts unecrypted_array
  puts shift_factor
end

user_input