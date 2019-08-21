#write your code here


def add(x,y)
    x+y
end

def subtract(a,b)
    a-b
end

def sum(arr)
    res = 0
    arr.each { |i| res += i }
    return res
end

def multiply(x,y,*opt)
    res = x*y
    if opt
        opt.each { |i| res *= i }
    end
    return res
end

def power(q,w)
    q**w 
end

def factorial(n)
    if n >= 0
        res = 1
        while(n>1)
            res *= n
            n -= 1
        end
        return res
    end
end