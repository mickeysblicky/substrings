dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings (word, arr)
    splitted_word = word.downcase.split
    h = {}
    splitted_word.each_with_index do |string, index|
        arr.each_with_index do |s, i|
            count = splitted_word.count {|e| e.include?(s)}
            if string.include?(s)
                h[s] = count
            end
        end
    end
    p h
end
substrings("Howdy partner, sit down! How's it going?", dictionary)