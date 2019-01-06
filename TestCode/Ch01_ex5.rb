# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
return string.gsub('sad','happy').gsub('Sad','Happy')
end

puts add_more_ruby("The clowns were sad.")
puts add_more_ruby("The sad dad said sad stuff.")
puts add_more_ruby("Sad times are ahead!")

=begin
sentence = "Sale!! Teapots now $10, Towels now $20."
sentence.gsub(/\d+/) { |n| n.to_i - ((n.to_i * 20) / 100) }
# => "Sale!! Teapots now $8, Towels now $16."
=end

=begin
def change_it_up(string)
  string.gsub(/[abcd]/, 'a' => 'e', 'b' => 'f', 'c' => 'g', 'd' => 'h')
end

change_it_up('abcd')
=end