class PigLatinizer

    def initialize
    end

    def piglatinize(text)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        s = text.split(" ")
        prefix_res = ""
        res = s.map do |word|
            if vowels.include?(word[0])
                word = word + "way"
            else
                w = word.split('')
                prefix = ""
                w.each do |letter|
                    break if vowels.include?(letter)
                    if !vowels.include?(letter)
                        prefix = prefix + letter
                    end
                end
                prefix_res = w.join + prefix
                prefix_res.slice!(prefix)
                prefix_res = prefix_res + "ay"
            end
        end
        res.join(' ')
    end
    
    



end
