#write your code here

def translate(s)
    arr = s.split(' ')
    if arr.length < 2
        letters = s.split('')
        add = []
        if letters[0] != 'a' && letters[0] != 'e' && letters[0] != 'i' && letters[0] != 'o' && letters[0] != 'u'
            i=0
            while letters[i] != 'a' && letters[i] != 'e' && letters[i] != 'i' && letters[i] != 'o' && letters[i] != 'u' && i<letters.length
                add.push(letters[i])
                i += 1
            end
            add = add.join('')
            if letters.slice(0,2) == ['q', 'u'] || (letters[i-1] == 'q' && letters[i] == 'u')
                return s.sub(add+'u','') + add+'u' + 'ay'
            else
                return s.sub(add,'') + add + 'ay'
            end
        else
            return s + 'ay' 
        end
    end
    res = []
    iter = 0
    while iter < arr.length
        i = 0
        add = []
        letters = arr[iter].split('')
        if letters[0] != 'a' && letters[0] != 'e' && letters[0] != 'i' && letters[0] != 'o' && letters[0] != 'u'
            while letters[i] != 'a' && letters[i] != 'e' && letters[i] != 'i' && letters[i] != 'o' && letters[i] != 'u' && i < letters.length
                add.push(letters[i])
                i += 1
            end
            if letters.slice(0,2) == ['q', 'u'] || (letters[i-1] == 'q' && letters[i] == 'u')
                add = add.join('')
                res.push(arr[iter].sub(add+'u','') + add + 'u' + 'ay')
            else
                add = add.join('')
                res.push(arr[iter].sub(add,'') + add + 'ay')
            end
            iter += 1
        else
            res.push(arr[iter]+'ay')
            iter += 1
        end
    end
    return res.join(' ')
end