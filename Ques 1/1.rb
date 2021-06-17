# 1. Use Blocks, Procs and Lambda each to write a program which takes array of integers as an input and finds the 
# count of even numbers in the array


def countsEvenyByBlock(arr)
    yield arr
end

countsEvenByLambda = lambda { |arr|
    count = 0
    arr.each do |ele|
        if ele%2==0
            count+=1
        end
    end
    puts "Counts by Lambda :- #{count}"
}


def countsEvenByProc
    return Proc.new { |arr|
    count = 0
    arr.each do |ele|
        if ele%2==0
            count+=1
        end
    end
    puts "Counts by Proc :- #{count}"
    }
end



arr = (1..10).to_a

countsEvenyByBlock(arr) { |arr|
    count = 0
    arr.each do |ele|
        if ele%2==0
            count+=1
        end
    end
    puts "Counts by Block :- #{count}"
}

countsEvenByLambda.call(arr)


count = countsEvenByProc
count.call(arr)

#  ----------------------------------------------+++++++++++++++++++++++++++++++++++++++-------------------------------
