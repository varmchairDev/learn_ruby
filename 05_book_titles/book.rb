class Book
# write your code here
    attr_reader :title
    def title=(t)
        word = t.split(' ')
        res = []
        word.each { |w| w == 'the' || w == 'and' || w == 'in' || w == 'of' || w == 'a' || w == 'an' ? res.push(w) : res.push(w.capitalize) }
        res[0] = res[0].capitalize
        @title = res.join(' ')
    end
end
