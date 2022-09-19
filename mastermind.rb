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

puts "\nDo you want to be the Codemaker or Codebreaker?\n\n"
puts "If Codemaker, enter CM. If Codebreaker, enter CB\n\n"
player = gets.chomp

case
when player == 'CM'
    puts "\nSet the board!\n\n"
    codemaker = Array.new()
    loop do 
        puts "Colors to choose from: blue, green, orange, purple, red, yellow"
        puts "Insert 4 colors separated by a space\n\n"
        codemaker = gets.chomp.split()
        if (codemaker.map {|x| array.include? x}).include? false
            puts "This color doesn't exist. Try again."
        else
            puts "\nCM: " + codemaker.join(' ')
            puts "\n--------------------------------"
            break codemaker
        end
    end
when player == 'CB'
    codemaker = Array.new()
    i=0
    while i <= 3
        codemaker[i] = array[rand(0..5)]
        i = i+1
    end
    puts "\nReady? Press Enter to start breaking the code!\n"
    gets.chomp
    puts "--------------------------------"
end

arr = codemaker

codebreaker = Array.new()

round = 1

while round <= 12

    if player == 'CB'
        codebreaker = gets.chomp.split()
    elsif player == 'CM'
        i=0
        while i <= 3
            codebreaker[i] = array[rand(0..5)]
            i = i+1
        end
    end

    puts
    puts "R#{round}: " + codebreaker.join(' ')

    arr = codemaker.zip(codebreaker).map do |x,y| 
        if x==y
            'black'
        else
            x
        end
    end

    index = arr.each_index.select{|i| arr[i] == 'black'}
    index.map {|x| codebreaker[x] = 'black'}

    i = 0
    while i <= 3
        if arr[i]=='black'
        elsif arr[i]!='black' and arr[i]!=codebreaker[i] and arr.include? codebreaker[i]
            num = arr.index(codebreaker[i])
            arr[num] = 'white'
            codebreaker[i] = 'white'
        end
        i += 1
    end

    puts 'CB: ' + codebreaker.join(' ')
    puts "\n--------------------------------"
    puts

    if codebreaker == ['black','black','black','black']
        puts '-- You broke the code! --'
        break
    elsif round == 12
        if codebreaker == ['black','black','black','black']
            puts '-- You broke the code! --'
        break
        else
            puts 'Code not broken =/'
        end
    end

    case
    when round == 11
        puts "Last chance!\n"
    end

    round = round + 1
end