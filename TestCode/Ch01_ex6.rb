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
odds_and_evens("abcdefg",true)
=end
=begin

def odds_and_evens(string,boo)
    new_str=""
        if boo == true    
       
            string.length.times{|ch|  new_str = new_str+string[ch] if ch.odd?}
           
        else
        
            string.length.times{|ch|  new_str = new_str+string[ch] if ch.even?}
        end
        return new_str 
end
print odds_and_evens("abcdefg",false)
=end

def odds_and_evens(string,boo)
    new_str= ""
    string.length.times do |num|
        new_str = new_str + string[num] if (boo == true) && num.odd?
        new_str =new_str+ string[num] if (boo == false) && num.even?    
    num= num+1
    end 
    return new_str
end
print odds_and_evens("abcdefg",true)
=begin
def odds_and_evens(string, return_odds)

    to_return = ""
  
    string.size.times do |index|
  
      next if return_odds && index.even?
  
      next if !return_odds && index.odd?
  
      to_return << string[index]
  
    end
  
    to_return
  
  end
  =end 