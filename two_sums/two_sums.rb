# require 'byebug'
def bad_two_sum?(arr, target)
  (arr.length - 1).times do |idx1|
    ((idx1 + 1)...arr.length).each do |idx2|
      return true if target == arr[idx1] + arr[idx2]
    end
  end
  false  
end 
puts "here we are"
# public
def okay_two_sum?(arr, target)
  sorted = arr.sort

  until arr.length == 1 
    a = target - sorted.shift
    index = binary_search(arr, a)
  end
end
    
def binary_search(arr, num)
  return nil if arr.empty?
  mid = arr.length/2
  left = arr.take(mid)
  right = arr.drop(mid + 1)
  case num <=> arr[mid]
  when 0
    arr[mid]
  when -1
    "hi"
    # left.binary_search(num)
    binary_search(left, num)
  else
    
    # num_id = right.binary_search(num)
    num_id = binary_search(right, num)
    num_id.nil? ? nil : num_id + mid + 1
  end
end


# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6)
# p bad_two_sum?(arr, 10) 
# 
# p okay_two_sum?(arr, 6)
# p okay_two_sum?(arr, 10) 
# 
# arr2 = [-5, 4, 3, 10, -7, -3, 1]
# p okay_two_sum?(arr2, -12)
# p okay_two_sum?(arr2, 13) 
# p okay_two_sum?(arr2, 0)
# p okay_two_sum?(arr2, 14) 
