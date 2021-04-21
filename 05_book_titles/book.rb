class Book
# write your code here

def title
  @title
end

def title=(title)
  title = title.split(" ")
  array = []
  title.each_with_index do |word, idx|
      if (check_articles(word) || check_conjunctions(word) || check_prepositions(word)) && idx > 0
          array << word
      else
          array << word[0].upcase + word[1..-1]
      end
  end
  @title = array.join(" ")
end

private

def check_articles(word)
  articles = "a an the".split(" ")
  articles.include?(word)
end

def check_conjunctions(word)
  conjunctions = "for and nor but or yet".split(" ")
  conjunctions.include?(word)
end

def check_prepositions(word)
  prepositions = "at by for from in of on to with".split(" ")
  prepositions.include?(word)
end

  
end
