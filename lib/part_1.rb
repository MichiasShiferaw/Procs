def my_map(array1, &prc)
    newArray=[]
    array1.each do |i|
        newArray<<prc.call(i)
    end
    newArray
end

def my_select(array1,&prc)
    newArray=[]
    array1.each do |i|
        if prc.call(i)
            newArray<<i
        end
    end
    newArray
end


def my_count(array1, &prc)
        newArray=[]
        count=0
    array1.each do |i|
        if prc.call(i)
            count+=1
        end
    end
    count


end

def my_any?(array1, &prc)
        newArray=[]
    array1.each do |i|
        if prc.call(i)
            return true
        end
    end
    return false

end


def my_all?(array1, &prc)
        newArray=[]
    array1.each do |i|
        if !(prc.call(i))
            return false
        end
    end
    return true

end
def my_none?(array1, &prc)
        newArray=[]
    array1.each do |i|
        if (prc.call(i))
            return false
        end
    end
    return true
end


