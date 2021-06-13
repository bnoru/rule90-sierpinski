rule90 = Array.new(100, false)
rule90_new = Array.new(100, false)
rule90[50] = true
i = 0

def printline(line)
    line.each do |value|
        case value
            when false
                print " "
            when true
                print "*"
        end
    end
    puts "\n"
end

printline(rule90)

while i < 31 do 

    rule90.each_index do |index|
        rule90_new[index] = rule90.at(index - 1) ^ rule90.at(index + 1) 
    end

    i += 1

    rule90 = rule90_new
    
    printline(rule90_new)

    rule90_new = Array.new(100, false)

end

