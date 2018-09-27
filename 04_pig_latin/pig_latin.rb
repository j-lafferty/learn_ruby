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
    converted_word = word.chars
    vowels = %w[a e i o u]
    consonants = %w[q w r t y p s d f g h j k l z x c v b n m]

    for i in (0..(word.length - 1))
		if converted_word.first == vowels[i]
			converted_word << 'a'
            converted_word << 'y'
        end
    end

    return converted_word.join
end

    