
p array = ['blue', 'green', 'orange', 'purple', 'red', 'yellow']

i=0

codemaker = Hash.new()

while i <= 3

codemaker[i] = array[rand(0..5)]
i = i+1

end
p codemaker
round = 0

codebreaker = Hash.new()

# class Array
#     def subtract(array)
#       array.each do |val|
#         if index = index(val)
#           delete_at(idex)
#         end
#       end
#     end
# end


while round <= 0

    position = 0
    while position <= 3
        codebreaker[position] = gets.chomp
        x = codebreaker[position]
       
        position = position + 1
    end
    p codebreaker

    round = round + 1
end