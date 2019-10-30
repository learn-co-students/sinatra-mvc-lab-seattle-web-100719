class PigLatinizer
    attr_accessor :words

    def initialize(words = '')
        @words = words
    end

    def piglatinize(word = @words)
        word.split.map do |word| 
            if word.length == 1
                word + "way"
            else
                latinize(word)
            end
        end.join(" ")
    end

    def latinize(word)
        start_char = word.split(/[AEIOUaeiou]/).first
        length = start_char.length
        if length > 0 
            word = word[length..] + start_char
        else
            word += "w"
        end
        word + "ay"
    end
end

