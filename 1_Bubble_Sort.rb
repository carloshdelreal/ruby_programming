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

def bubble_sort_by(array)
  flag = 1
  while flag == 1
    flag = 0
    array.each.with_index do |x, i|
      if !array[i + 1].nil? && yield(array[i], array[i + 1]) > 0
        aux = x
        array[i] = array[i + 1]
        array[i + 1] = aux
        flag = 1
      end
    end
  end
  array
end

bubble_sort([4, 3, 78, 2, 0, 2])
#=> [0,2,2,3,4,78]

result = bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end

print result
