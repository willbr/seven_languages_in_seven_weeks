finished = false

# taken from SO
class String
    def is_i?
       !!(self =~ /^[-+]?[0-9]+$/)
    end
end

pick = rand(10)

puts 'Guess the number: (0-10)'

until finished
    line = gets.chomp
    continue if !line.is_i?
    guess = line.to_i
    if guess == pick
        puts 'equal'
        finished = true
    elsif pick < guess
        puts 'lower'
    elsif pick > guess
        puts 'higher'
    else
        puts 'I don\'t understand that.'
    end
end

