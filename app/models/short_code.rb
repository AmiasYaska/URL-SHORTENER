class ShortCode

    ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
    BASE = ALPHABET.length

    def self.encode(number)
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
        
    end

end