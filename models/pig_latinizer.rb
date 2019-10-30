require 'pry'

class PigLatinizer
    attr_accessor :text
  
    def piglatinize(sentence)
        if sentence
            sentenceArray = sentence.split

            sentenceArray.map {|word| latinize(word)}.join(" ")
        end 
    end

    def latinize(word)
        indexOfVowel = getVowelLocation(word)

        if(hasNumbers?(word))
            returnWord = word
        elsif(indexOfVowel == 0)
            returnWord = "#{word}way"
        else
            wordStart = word.chars[0...indexOfVowel]
            wordEnd = word.chars[indexOfVowel..word.chars.size-1]
            returnWord = "#{(wordEnd + wordStart).join}ay"
        end

        returnWord
    end

    def getVowelLocation(word)
        wordArray = word.chars
        wordArray.index(wordArray.detect {|char| isAVowel?(char)})
    end

    def isAVowel?(char)
        if char.scan(/[aeiou]/i).count > 0
            true
        else
            false
        end
    end

    def hasNumbers?(word)
        if word.scan(/[123456789]/).count > 0
            true
        else
            false
        end
    end
  
  end


