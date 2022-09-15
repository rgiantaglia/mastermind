#12 Rounds
#Decrease number of rounds after each round

#Code pegs: yellow, red, purple, blue, green, orange
#Key pegs: black (right color & right position) and white (right color)

#Codemaker choose colors for 4 positions
#Codebreaker guesses the colors

#First computer chooses rand(0..3)
array = ['blue', 'green', 'orange', 'purple', 'red', 'yellow']

#Main array.include? guessed color? If yes, than add white peg. 
#If guess is correct color and position, add black peg

i=0

codemaker = Array.new()

while i <= 3

codemaker[i] = array[rand(0..5)]
i = i+1

end
p codemaker
arr = codemaker

round = 0

codebreaker = Array.new()

while round <= 0

    position = 0
    while position <= 3
        codebreaker[position] = gets.chomp
        x = codebreaker[position]
        position = position + 1
    end
    p codebreaker 

    arr = codemaker.zip(codebreaker).map do |x,y| 
        if x==y
            'B'
        else
            x
        end
    end

    arr
    index = arr.each_index.select{|i| arr[i] == 'B'}
    index.map {|x| codebreaker[x] = 'B'}

    i = 0
    while i <= 3
        if arr[i]=='B'
        elsif arr[i]!='B' and arr[i]!=codebreaker[i] and arr.include? codebreaker[i]
            num = arr.index(codebreaker[i])
            arr[num] = 'W'
            codebreaker[i] = 'W'
        end
        i += 1
    end
    arr
    p codebreaker

    # if arr[0]=='B'
    # elsif arr[0]!='B' and arr[0]!=codebreaker[0] and arr.include? codebreaker[0]
    #     num = arr.index(codebreaker[0])
    #     arr[num] = 'W'
    #     codebreaker[0] = 'W'
    # # else
    # #     arr[0] = '-'
    # end
    # p arr
    # p codebreaker

    # if arr[1]=='B'
    # elsif arr[1]!='B' and arr[1]!=codebreaker[1] and arr.include? codebreaker[1]
    #     p num = arr.index(codebreaker[1])
    #     arr[num] = 'W'
    #     codebreaker[1] = 'W'
    # # else
    # #     arr[1] = '-'
    # end
    # p arr
    # p codebreaker

    # if arr[2]=='B'
    # elsif arr[2]!='B' and arr[2]!=codebreaker[2] and arr.include? codebreaker[2]
    #     p num = arr.index(codebreaker[2])
    #     arr[num] = 'W'
    #     codebreaker[2] = 'W'
    # # else
    # #     arr[2] = '-'
    # end
    # p arr
    # p codebreaker

    # if arr[3]=='B'
    # elsif arr[3]!='B' and arr[3]!=codebreaker[3] and arr.include? codebreaker[3]
    #     p num = arr.index(codebreaker[3])
    #     arr[num] = 'W'
    #     codebreaker[3] = 'W'
    # # else
    # #     arr[3] = '-'
    # end
    # p arr
    # p codebreaker

    # i = 0
    # while i <= 3 do
    #     if arr[i]=='black'
    #     elsif arr[i]!='black' and arr[i]!=a and arr.include? codebreaker[i]
    #         arr2[i] = 'white'
    #     else
    #         arr2[i] = '-'
    #     end
    #     i +=1
    # end
    # p arr
    # p arr2


    # arr = codemaker.zip(codebreaker).map do |x,y| 
    #     if x==y
    #         'black'
    #     else
    #         x
    #     end
    # end

    # p arr

    # if arr[0]=='black'
    # elsif arr[0]!='black' and arr[0]!=a and arr.include? a
    #     arr[0] = 'white'
    # else
    #     arr[0] = '-'
    # end
    # p arr

    # if arr[1]=='black'
    # elsif arr[1]!='black' and arr[1]!=b and arr.include? b
    #     arr[1] = 'white'
    # else
    #     arr[1] = '-'
    # end
    # p arr

    # if arr[2]=='black'
    # elsif arr[2]!='black' and arr[2]!=c and arr.include? c
    #     arr[2] = 'white'
    # else
    #     arr[2] = '-'
    # end
    # p arr

    # if arr[3]=='black'
    # elsif arr[3]!='black' and arr[3]!=d and arr.include? d
    #     arr[3] = 'white'
    # else
    #     arr[3] = '-'
    # end
    # p arr
    # if codemaker[2] == c
    #     codemaker[2] = 'black'
    # elsif codemaker[2]!=c and codemaker.include? c
    #     codemaker[2] = 'white'
    # else
    #     codemaker[2] = '-'
    # end
    # p codemaker
    # if codemaker[3] == d
    #     codemaker[3] = 'black'
    # elsif codemaker[3]!=d and codemaker.include? d
    #     codemaker[3] = 'white'
    # else
    #     codemaker[3] = '-'
    # end
    # p codemaker
  
    # codemaker.zip(codebreaker)
    # arr2 = codemaker.zip(codebreaker).map do |x,y| 
    #     if x==y
    #         'black'
    #     # elsif x!=y and codemaker.include? y
    #     #     t = codemaker.count(x)
    #     # while t > 0
    #     #     t -= 1
    #     #     break 'white'
    #     # end
    #     else
    #         x
    #     end
    # end

    # codemaker = arr2
    # p codemaker

    # num = codebreaker.map {|x| codemaker.index(x)}
    # p num

    # # p codemaker.zip(codebreaker)
    # arr3 = codemaker.zip(codebreaker).map do |x,y| 
    #     if x!=y and codemaker.include? y and x!='black'
    #         'white'
    #     else
    #         x = '-'
    #     end
    # end

    # p arr3

    # arr3 = codemaker.zip(arr2).map do |x,y| 
    #     if x==y
    #         'black'
    #     # elsif x!=y and codemaker.include? y
    #     #     t = codemaker.count(x)
    #     # while t > 0
    #     #     t -= 1
    #     #     break 'white'
    #     # end
    #     else
    #         y
    #     end
    # end

    # p arr3


    # if y!='black' and codemaker.include? y

    round = round + 1
end