def first_anagram?(str1, str2)
  subs = str1.split("").permutation(str1.length)
  result = subs.map do |el|
    el.join
  end
    
  result.include?(str2)
end

def second_anagram?(str1, str2)
  str1.each_char do |ch1|
    str2.each_char.with_index do |ch2, i|
      if ch1 == ch2
        str1 = str1[1..-1]
        str2 = str2[0...i] + str2[(i + 1)..-1]
      end
    end 
  end 
  
  str1.empty? && str2.empty?
end

def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  str1.each_char { |ch| hash1[ch] += 1 }
  str2.each_char { |ch| hash2[ch] += 1 }
  
  hash1 == hash2  
end

def bonus_fourth_anagram?(str1, str2)
  hash = Hash.new(0)
  
  str1.each_char { |ch| hash[ch] += 1 }
  str2.each_char { |ch| hash[ch] -= 1 }
  
  hash.values.all? { |ch| ch == 0 }
end 

p first_anagram?("gizmo", "sally")
p first_anagram?("elvis", "lives")

p second_anagram?("gizmo", "sally")
p second_anagram?("elvis", "lives")

p third_anagram?("gizmo", "sally")
p third_anagram?("elvis", "lives")

p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")

p bonus_fourth_anagram?("gizmo", "sally")
p bonus_fourth_anagram?("elvis", "lives")
