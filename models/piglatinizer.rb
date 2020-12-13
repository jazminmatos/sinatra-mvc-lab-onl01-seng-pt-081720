require 'pry'

#if first letter are consonants and second letter is vowel, it goes to end of word
    #also add ay to the end
#if first two leters are consonants, they go to the end of the word
    #also add ay to the end
#if first letter is vowel, nothing happens
    #add "way" to the end   

class PigLatinizer

    def start_with_vowel?(word)
        vowels = %w[a e i o u] + %w[A E I O U]

        vowels.include?(word[0])

        # check vowels if they include first letter of word
    end

    def piglatinize(word)
        array_of_letters = word.split("")
        #binding.pry 

        array_of_letters.collect do |letter|
            if start_with_vowel?(letter[0])
                letter + "way"
            else
                until start_with_vowel?(letter[0]) do 
                    letter = letter[1..-1] + letter[0]
                end

                letter = letter + "ay"
                binding.pry
            end
        end.join(" ")




        # pig_array = []

        # array_of_letters.each do |word|
        #     if word.length < 2
        #         pig_array << word + "way" 
        #     elsif vowels.include?(word[0])
        #         pig_array <<  word + "way"
        #     elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        #         pig_array <<  word[3..-1] + word[0..2] + 'ay'
        #     elsif consonants.include?(word[0]) && consonants.include?(word[1])
        #         pig_array <<  word[2..-1] + word[0..1] + 'ay'
        #     elsif consonants.include?(word[0])
        #         pig_array <<  word[1..-1] + word[0] + 'ay'
        #     else 
        #         pig_array <<  word + '?'
        #   end
        # end
        # pig_array.join(', ').gsub(/,/, '')
    end
end