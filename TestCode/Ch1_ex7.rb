# given a string, return the character after every letter "r"

# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"

# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"

# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say(string)
    ret = ""
    ind=0
    (string.length-1).times do |ind|
        if string[ind] == "r" || string[ind] == "R"
            #ret = "#{ret}#{string[ind+1]}"  
            #ret = ret.concat(string[ind+1])  
            ret = ret + (string[ind+1])  
        else
            ret = ret
        end
        ind = ind+1   
    end
    return ret
end

puts pirates_say("are you really learning Ruby?")
puts pirates_say("Katy Perry is on the radio!")
puts pirates_say("Pirates say arrrrrrrrr")


# My Solution
=begin
def pirates_say_arrrrrrrrr(string)

	newstring = ""

	for i in 0..(string.length-2)

		newstring += string[i+1] if string[i] == "r" || string[i] == "R"

	end

	newstring[0..-1]

end
=end

=begin

# Suggested Solution

def pirates_say_arrrrrrrrr(string)

  to_return = ""

  add_next = false

  string.size.times do |index|

    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]

    to_return << current_char if add_next

    add_next = (current_char == "r" || current_char == "R")

  end

  to_return

end

=end 