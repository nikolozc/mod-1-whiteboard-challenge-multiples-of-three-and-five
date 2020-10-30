require 'pry'

def collect_multiples(limit)
    multiples_of_3 = (1...limit).to_a.select do |number|
        number % 3 == 0
    end
    multiples_of_5 = (1...limit).to_a.select do |number|
        number % 5 == 0
    end
    retVal = (multiples_of_3 + multiples_of_5).uniq!
    if retVal == nil
        return (multiples_of_3 + multiples_of_5).sort!
    else
        return retVal.sort!
    end
end

def sum_multiples(limit)
    array = collect_multiples(limit)
    retVal = 0
    array.each do |element|
        retVal+=element
    end
    retVal
end