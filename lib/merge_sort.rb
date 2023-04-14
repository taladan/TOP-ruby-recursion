# lib/merge_sort.rb

def merge_sort(array)
  if array.size < 2
    return array
  else
    left,right=array.each_slice((array.size/2.0).round).to_a
    left = merge_sort(left)
    right =  merge_sort(right)
    output = merge(left, right)
  end
  output
end

def merge(left, right)
  output = []
  
  while left.length >0 && right.length > 0
    if left.first < right.first
      output << left.shift
    else
      output << right.shift
    end
  end
  while left.length > 0
    output << left.shift
  end
  while right.length > 0
    output << right.shift
  end
  output
end


test_array = [1,16,7,5,4,6,2,3]
test_array2 = [9,15,854,342,12,16,1,10,100,14,13,98,12,16,5]
p merge_sort(test_array)
p merge_sort(test_array2)