# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C",
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"
=begin
def grade(books, read)
    if books < 10 && read == false
        return "D"
    elsif books < 10 && read == true
        return "C"
    elsif (books >= 10 && books <= 20) && read == false
        return "C"
    elsif (books >= 10 && books <= 20) && read == true
        return "B"
    elsif books > 20 && read == false
        return "B"
    elsif books > 20 && read == true
        return "A"    
    end 
end 

puts grade(4,false)
puts grade(4,true)
puts grade(15,true)
=end
def grade1(books,read)
    if read == false
        return "D" if books < 10
        return "C" if books <= 20 && books >= 10
        return "B" if books > 20
    else
        return "C" if books < 10
        return "B" if books <= 20 && books >= 10
        return "A" if books > 20
    end
end

puts grade1(4,false)
puts grade1(4,true)
puts grade1(15,true)