#write your code here
def echo(what)
   what
end

def shout(what)
   what.upcase
end

def repeat(what, number_times = 2)
   result = ""
   number_times.times do
       result += what + " "
   end
   result[0..-2]
end

def start_of_word(word, start = 1)
   word[0..start - 1]
end

def first_word(line)
   line.split(" ")[0]
end

def title(word)
   word[0].upcase + word[1..-1]
end

def titleize(line)
   result = []
   line.split(" ").each_with_index do |word, idx|
       if word == "and" || word == "over"
           result << word
       elsif word == "the" && idx > 0
           result << word
       else
           result << title(word)
       end
   end
   result.join(" ")
end
