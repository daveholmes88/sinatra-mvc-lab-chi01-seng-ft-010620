require 'pry'

class PigLatinizer 

    def piglatinize(string)
        array = string.split(" ")
        pl_array = array.map { |word| piglatin_word(word)}
        pl_array.join(" ")
    end 

    def piglatin_word(word)
        vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        if vowels.include?(word[0])
            "#{word}way"
        elsif vowels.include?(word[1])
            letters = word.split("")
            letters << letters.shift
            letters << ["a", "y"]
            letters.join
        elsif vowels.include?(word[2])
            letters = word.split("")
            letters << letters.shift
            letters << letters.shift
            letters << ["a", "y"]
            letters.join
        elsif vowels.include?(word[3])
            letters = word.split("")
            letters << letters.shift
            letters << letters.shift
            letters << letters.shift
            letters << ["a", "y"]
            letters.join
        end 
    end 



end 