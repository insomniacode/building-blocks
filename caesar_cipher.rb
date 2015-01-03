def caesar_cipher(arr,num=0)

    hash = Hash[('a'..'z').map.with_index.to_a]

    (0..arr.length-1).each do |item|

        letter = arr[item].downcase

        if (hash[letter] != nil)

            new_index = hash[letter] + num.to_i

            if (new_index >= 26)
                new_index = new_index - 26
            end

            new_value = hash.key(new_index)

            if (arr[item] === arr[item].capitalize)
                new_value = new_value.upcase
            end

            arr[item] = new_value

        end
    end

    return arr

end

puts "To translate a code into Caesar cipher,"
puts " type it in this format:"
puts 'caesar_cipher("example", 3)'
puts "Enter the text that you want encoded:"
test_text = gets.chomp
puts "How many characters do you want to shift it (0-26)?"
test_num = gets.chomp.to_i
puts caesar_cipher(test_text, test_num)