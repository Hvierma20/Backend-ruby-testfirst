#write your code here

def translate(words)
    result = []
    words = words.split(" ")
    words.each do |word|
        result << translate_word(word)
    end
    result.join(" ")
end

def check_vowels(letter)
    vowels = "aeiou".split("")
    vowels.include?(letter)
end

def check_consonant(letter)
    consonants = "bcdfghjklmnpqrstvwxyz".split("")
    consonants.include?(letter)
end

def check_phoneme(letters)
    "qu".include?(letters)
end

def check_word_phoneme(word)
    word = word.split("")
    word.each_with_index do |char, idx|
        if char == "q" && word[idx + 1] == "u"
            return true
        end
    end
    false
end

def translate_word(word)
    result = ""
    if check_vowels(word[0])
        result = word + "ay"
    else
        if check_consonant(word[0]) && check_consonant(word[1]) && check_consonant(word[2])
            if word[1] == "q" && word[2] == "u"
                result = word[word.index("qu") + 2..-1] + word[0] + "quay"
            else
                result = word[3..-1] + word[0..2] + "ay"
            end
        elsif check_consonant(word[0]) && check_consonant(word[1])
            if word[1] == "q" && word[2] == "u"
                result = word[word.index("qu") + 2..-1] + word[0] + "quay"
            else
                result = word[2..-1] + word[0..1] + "ay"
            end
        elsif check_consonant(word[0])
            if word.include?("qu")
                word_index = word.index("qu")
                if word_index == 0
                    result = word[word.index("qu") + 2..-1] + "quay"
                else
                    result = word[word.index("qu") + 2..-1] + word[0] + "quay"
                end
            else
                result = word[1..-1] + word[0] + "ay"
            end
        end
    end
    result
end

puts translate("square")
