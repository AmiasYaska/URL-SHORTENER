class ShortCode

    ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
    BASE = ALPHABET.length
    CHECKING = "BHU".slice(0:)

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
        # total = 0
        # pieces = 0

        if string.length == 1
            return ALPHABET.index(string) 
        else
            first_char = string.slice(0)
            second_char = string.slice(1)
            number_divided = (ALPHABET.index(first_char) * 62) + ALPHABET.index(second_char)
            return number_divided
        end

        while string.length > 1 do
            first_char = string.slice(pieces)
            second_char = string.slice(pieces + 1)
            number_divided = (ALPHABET.index(first_char) * 62) + ALPHABET.index(second_char)
            total += number_divided
        end
        total
    end

end