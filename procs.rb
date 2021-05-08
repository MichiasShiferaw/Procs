# array=[1,2,3]

# p array.map{|num| num *2}

# my_proc=Proc.new {|num| num *2}

# p my_proc.call(3)


def add_and_proc(num1, num2, prc)
    sum=num1+num2
    prc.call(sum)

end

doubler=Proc.new{|n| 3*n}
p add_and_proc(2,3,doubler)