class PigLatinizer
    attr_accessor :words

    def initialize(words = '')
        @words = words
    end

    def piglatinize(words = @words)
        words_array = words.split(" ")
        final_phrase = []
        words_array.each do |word|
            split_word = word.split("")
            first_vowel_index = split_word.find_index{|c| c=="a" || c=="A" || c=="e" || c=="E" || c=="i" || c=="I" || c=="o" || c=="O" || c=="u" || c=="U"}
            if first_vowel_index == 0
                final_phrase << word + "way"
            else
                up_to_vowel = split_word[0...first_vowel_index]
                after_vowel = split_word[first_vowel_index..]
                final_phrase << ((after_vowel + up_to_vowel).join + "ay")
            end
        end
        final_phrase.join(" ")
    end
end