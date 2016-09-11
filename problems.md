Snippet 1 - Big O:O(n)

def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end

Snippet 2 - Big O:O(n*m)

def info_dump(customers)
  puts "Customer Names: "
  customers.each do |customer|
    puts "#{customer[:name]}"
  end
  puts "Customer Locations: "
  customers.each do |customer|
    puts "#{customer[:country]}"
  end
end

Snippet 3 - Big O:O(n)

def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end

Snippet 4 - Big O:O(n^2)

def duplicates?(array)
  array.each_with_index do |item1, index1|
    array.each_with_index do |item2, index2|
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end

Snippet 5 - Big O:O(n*m)

words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end

Snippet 6 - Big O:O(n)

numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end


Snippet 7 - Big O:O(n)

# this is insertion sort
(2..num.length).each do |j|
    key = num[j]
    i = j - 1
    while i > 0 and num[i] > key
        num[i+1] = num[i]
        i = i - 1
    end
    num[i+1] = key
end

Snippet 8 - Big O:O(n*m)

# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end
