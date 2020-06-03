class PigLatinizer

    attr_reader :string

    def translate(str)
    phrase = str.split(' ')

        phrase.map do |word|
            if word.downcase.start_with?(/[aeoui]/)
            "#{word}way"
            else
            idx = word.index(/[aeiou]/)
            "#{word[idx, word.size] + word[0, idx]}ay"
            end
        end.join(' ')
    end
end 



