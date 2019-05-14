class Book
# write your code here

    attr_reader :title

    def title=(input)
        words = input.split(" ")
        output = ""
        small = "a", "an", "the", "and", "in", "of"

        words.each_with_index do |word, index|
            puts "#{word}  is the word"
            if small.include?(word)
                if index == 0
                    output += word.capitalize  
                else
                    output += word
                end
            else
                output += word.capitalize
            end
            if index != words.length - 1
                output += " "
            end
        end
        @title = output
    end
end
