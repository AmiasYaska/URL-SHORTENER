class ShortCode

    ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
    BASE = ALPHABET.length

    def self.encode(number)
        if number == 0
            return "0"
        end
        results = ""
        while number > 0 do
            first_calc = number % BASE
            char = ALPHABET[first_calc]
            results.prepend char
            number = number / BASE
        end
       results
    end

    def self.decode(string)
        # if string.length == 1
        #     return ALPHABET.index(string) 
        # else
        #     first_char = string.slice(0)
        #     second_char = string.slice(1)
        #     number_divided = (ALPHABET.index(first_char) * 62) + ALPHABET.index(second_char)
        #     return number_divided
        # end
        number = 0
        string.reverse.each_char.with_index do |char, index|
            power = BASE**index
            index = ALPHABET.index(char)
            number += power * index
        end
        number 
    end

end