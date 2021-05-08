def reverser(str1, &prc)

    return prc.call(str1.reverse)


end

def word_changer(str1, &prc)
    newStr=""
    str1.split(" ").each do |i|
        newStr+=prc.call(i)+(" ")
    end

    newStr.strip
end

def greater_proc_value(num_1, prc, prc2)
    val1= prc.call(num_1)
    val2=prc2.call(num_1)
    if (val1>val2)
        return val1
    end
    return val2
end

def and_selector(array1, proc_1, proc_2)
    newArray=[]
    array1.each do |i|
        if proc_1.call(i) && proc_2.call(i)
            newArray<<i
        end
    end
    newArray
end

def alternating_mapper(array1, proc_1, proc_2)
    newArray=[]
    array1.each_with_index do |value,index| 
        if index.odd? 
            newArray<<proc_2.call(value)
        else
             newArray<<proc_1.call(value)
        end
    end
    newArray

end