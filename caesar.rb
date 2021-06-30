require 'pry'
def caesar_cipher(string, shift)
    #convert string to array
    array = string.split("")
    #iterate through array, shifting asccii value
    caesar_arr = array.map do |chr|
        #lowercase
        if chr.ord >= 97 && chr.ord <= 122
            shifted = chr.ord + shift
            if shifted > 122
                shifted -= 26
            end
            shifted.chr
        #uppercase
        elsif chr.ord >= 65 && chr.ord <= 90
            shifted = chr.ord + shift
            if shifted > 90
                shifted -= 26
            end
            shifted.chr
        else
            chr
        end
    end
    #join array back into string and return 
    return caesar_arr.join
end

