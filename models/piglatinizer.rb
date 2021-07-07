class PigLatinizer
    @@all = []

    def initialize()
        @@all << self
    end

    def self.all
        @@all
    end

    def piglatinize(phrase)
        first_char = ""
        second_char = ""
        vowels = ["a","e","i","o","u","A","E","I","O","U"]
        split_phrase = phrase.split(" ")
        new_phrase = split_phrase.map do |word|
            first_phrase = ""
            second_phrase = ""
            third_phrase = ""
            split_word = word.split("")
            if split_word.length >= 1
                case split_word[0]
                when *vowels
                    first_phrase = word + "way"
                end
            end
            if split_word.length >= 2
                case split_word[1] 
                when *vowels
                    first_char = split_word.shift
                    second_phrase = split_word.join("") + first_char + "ay"
                end
            end
            if split_word.length >= 3
                case split_word[2]
                when *vowels
                    first_char = split_word.shift
                    second_char = split_word.shift
                    third_phrase = split_word.join("") + first_char + second_char  + "ay"
                else
                    first_char = split_word.shift
                    second_char = split_word.shift
                    third_char = split_word.shift
                    third_phrase = split_word.join("") + first_char + second_char  + third_char + "ay"
                end
            end
            if first_phrase != ""
                first_phrase
            elsif second_phrase != ""
                second_phrase
            else
                third_phrase
            end
        end
        new_phrase.join(" ")
    end
end