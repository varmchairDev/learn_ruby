#write your code here

def echo(command)
    command
end

def shout(command)
    command.upcase
end

def repeat(command, rep=2)
    command = command + ' '
    res = (command*rep).split(' ')
    return res.join(' ')
end

def start_of_word(command, x)
    if x == 1
        x -= 1
        return command.slice(x)
    elsif x>=2
        return command.slice(0,x)
    end
end

def first_word(command)
    res = command.split(' ')
    return res[0]
end

def titleize(command)
    iter = command.split(' ')
    res = []
    iter.each { |i| i == 'and' || i == 'the' || i == 'over' ? res.push(i) : res.push(i.capitalize) }
    res[0] = res[0].capitalize
    return res.join(' ')
end