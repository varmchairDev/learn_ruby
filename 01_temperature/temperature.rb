#write your code here

def ftoc(num)
    res = (num-32)/1.8
    round_meter = res - 0.5
    if res.to_i > round_meter
        return res.to_i
    else
        return res.to_i + 1
    end
end

def ctof(num)
    num*1.8 + 32
end