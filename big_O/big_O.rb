require "byebug"


def my_min_n2(arr)
  min = arr.first
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      next if idx1 == idx2
      temp_min = 0
      temp_min = el1 if el1 < el2
      min = temp_min if temp_min < min
    end
  end   
  min
end

def my_min_n(arr)
  accumulator = arr.first
  
  arr.each do |el|
    accumulator  = el if el < accumulator
  end
  
  accumulator
end


def sub_sum_n2(arr)
  sub_arr = []
  
  arr.length.times do |idx1|
    (idx1+1...arr.length).each do |idx2|
      sub_arr << arr[idx1..idx2]
    end
  end

  sub_arr
  result = []
  sub_arr.each do |sum|
    result << sum.reduce(:+)
  end
  
  result.max 
end

def sub_sum_n(arr)
  return arr.max if arr.all? { |el| el < 0 }
  sum = 0
  temp_sum = 0
  arr.each do |el|
    temp_sum = (temp_sum + el) > 0 ? temp_sum + el : 0
    sum = temp_sum if temp_sum > sum
  end
  
  sum
end 
  
  # sum = nil
  # temp_sum = nil
  # arr.each do |el|
  #   if temp_sum == nil
  #     temp_sum = el 
  #     if sum == nil
  #       sum = temp_sum
  #     elsif temp_sum > sum
  #       sum = temp_sum
  #     end
  #   elsif temp_sum >= 0
  #     if el >= 0
  #       temp_sum += el
  #       if sum == nil
  #         sum = temp_sum
  #       elsif temp_sum > sum
  #         sum = temp_sum
  #       end
  #     elsif temp_sum + el < 0
  #       if sum == nil
  #         sum = temp_sum
  #       elsif temp_sum > sum
  #         sum = temp_sum
  #       end
  #       temp_sum = nil 
  #     else
  #       temp_sum += el
  #       if sum == nil
  #         sum = temp_sum
  #       elsif temp_sum > sum
  #         sum = temp_sum
  #       end
  #     end
  #   else 
  #     if el > 0
  #       temp_sum += el 
  #       if sum == nil
  #         sum = temp_sum
  #       elsif temp_sum > sum
  #         sum = temp_sum
  #       end
  #     else 
  #       temp_sum = temp_sum < el ? el : temp_sum
  #       if sum == nil
  #         sum = temp_sum
  #       elsif temp_sum > sum
  #         sum = temp_sum
  #       end
  #     end 
  #   end 
  # end
  # sum