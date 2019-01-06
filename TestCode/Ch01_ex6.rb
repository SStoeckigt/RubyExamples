#You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"
=begin
def odds_and_evens(string,bool)
 string.each do |char|
    if bool == true
     if string.index(char)%2 ==0
        return string[char]
     else
        return ''
     end
        #return string[(string.index(char)%2 == 0)]
    else
        string.index(char)%2 !=0
        return string[char]
    else
        return ''

    end
end
end
=end

def odds_and_evens(string,boo)
    if boo == true    
        string.each{|char| puts char if string[char+1].even?}
    else
        string.each{|char| puts char if string[char+1].odd?}
    end
end