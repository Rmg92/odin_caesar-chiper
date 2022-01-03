def user_input
  puts "What string you want to code?"
  uncoded_string = gets
  puts "For how much do you want to shift it?"
  shift_factor = gets
  encoding(uncoded_string, shift_factor)
end

def encoding(uncoded_string, shift_factor)
  puts uncoded_string
  puts shift_factor
end

user_input