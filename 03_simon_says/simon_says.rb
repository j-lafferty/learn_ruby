#write your code here
def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, number = 2)
    return ("#{word} " * number).chomp(' ')
end

def start_of_word(word, range = 1)
    return word[0...range]
end

def first_word(word)
    words = word.split
    return words[0]
end

def titleize(word)
    stop_words = %w{a an and the or for of nor over}
    return word.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize} * " "
end
