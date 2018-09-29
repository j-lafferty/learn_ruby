#write your code here
def translate(string)
    string_to_translate = string.split
    pig_latin_string = ""

    for i in (0..(string_to_translate.length - 1))
        pig_latin_string << convert(string_to_translate[i])
        pig_latin_string << " "
    end

    return pig_latin_string.chomp(" ")
end

def convert(word)
    vowels = %w[a e i o u]
    consonants = %w[q w r t y p s d f g h j k l z x c v b n m]

    if vowels.include?(word[0])
        word + 'ay'
    elsif consonants.first == word[0] && vowels.last == word[1]
        word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0]) && consonants.first == word[1] && vowels.last == word[2]
        word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
        word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
        word[1..-1] + word[0] + 'ay'
    else
        word
    end
end

    