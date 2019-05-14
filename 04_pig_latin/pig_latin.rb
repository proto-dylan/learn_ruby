#write your code here

def vowel_check(word)
    vowels = "a", "e", "i", "o", "u", "q"
    chars = word.split("")
    chars.each_with_index do |char, index|
        if vowels.include?(char)
            if char == 'q'
                return index + 2
            end
            return index
        end
    end    
end
    

def translate(phrase)
    words = phrase.split(" ")
    pig = ""
    words.each_with_index do |word, index|
        vowelID = vowel_check(word)
        if vowelID == 0
            pig += word + "ay" 
        elsif vowelID == 1
            pig += word[1...] + word[0] + "ay"
        elsif vowelID == 2
            pig += word[2...] + word[0...2] + "ay"
        elsif vowelID == 3
            pig += word[3...] + word[0...3] + "ay"
        end
        if index != words.length - 1
            pig += " "
        end
    end
    return pig
end
                
