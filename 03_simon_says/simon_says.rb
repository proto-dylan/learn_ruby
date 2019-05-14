#write your code here
def echo(phrase)
    return phrase
end

def shout(phrase)
    return phrase.upcase
end

def repeat(phrase, num=1)
    x = 0
    total = ""
    if num == 1
        phrase += " " + phrase
        return phrase
    else
        while x < num do
            total += phrase  + " "
            x += 1
        end
        return total.strip!
    end
end
 def start_of_word(word, num=0)
    i = 0;
    start = ""
    while i < num do
        start += word[i]
        i += 1
    end
    return start
 end

 def first_word(phrase)
    return phrase.partition(" ").first
 end

 def titleize(title)
    string = title.split(' ')
    string.length.times do |i|
        if ' and over the an a '.include?(string[i])  == false or i == 0
            string[i] = string[i].capitalize
        end
    end
    string.join(' ')
 end