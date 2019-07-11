def bubble_sort(a)
    flag = true
    while flag 
        flag = false
        a.each.with_index do | item, index |
            if a[index+1] != nil
                if a[index] > a[index+1]
                    t = a[index+1]
                    a[index+1] = item
                    a[index] = t
                    flag = true 
                end
            end
        end
    end
    puts a.to_s
end



bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]