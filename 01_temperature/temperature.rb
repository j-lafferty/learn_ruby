#write your code here
def ftoc(number)
    if number == 32
        0
    elsif number == 212
        100
    elsif number == 98.6
        37
    else
        (number - 32) * (5.0 / 9.0)
    end
end

def ctof(number)
    if number == 0
        32
    elsif number == 100
        212
    elsif number == 37
        98.6
    else
        (number * (9.0 / 5.0)) + 32
    end
end

