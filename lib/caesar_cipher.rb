# require "pry-byebug"

def user_input
  puts 'What string you want to code?'
  unecrypted_message = gets.chomp
  puts 'For how much do you want to shift it?'
  shift_factor = gets.chomp.to_i
  encrypt(unecrypted_message, shift_factor)
end

def encrypt(unecrypted_message, shift_factor)
  # binding.pry
  # converts the passed unecrypted_string to an array
  unecrypted_array = unecrypted_message.chars
  # converts the each character of the unecrypted_array to ordinal
  ordinal_array = unecrypted_array.map { |letter| letter.ord }
  # adds the shift factor to each ordinal on the ordinal_array
  encoded_ordinal_array = ordinal_array.map do |number|
    if number < 65 || number.between?(91, 96) || number > 122
      number
    elsif number.between?(65, 90) && number + shift_factor > 90
      new_shift_factor = shift_factor
      new_shift_factor -= 26 while number + new_shift_factor > 90
      number + new_shift_factor
    elsif number.between?(97, 122) && number + shift_factor > 122
      new_shift_factor = shift_factor
      new_shift_factor -= 26 while number + new_shift_factor > 122
      number + new_shift_factor
    else
      number + shift_factor
    end
  end
  # converts the encoded_ordinal_array ordinals back to letters
  encoded_array = encoded_ordinal_array.map { |number| number.chr }
  # converts the encoded_array back to a string
  encoded_message = encoded_array.join
  puts encoded_message
end

user_input
