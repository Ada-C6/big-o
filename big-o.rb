#big-o.rb

# Problems for you

# Snippet 1 - Big O: [Linear, O(n).  The method iterates through each item in the array, so as the array gets larger, the time it takes to run increases at the same pace.]

def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end



# Snippet 2 - Big O: [Linear, O(n). These loops are each Linear.  Even though there are two of them, they aren't nested, so we go with the 'worst case.']

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



# Snippet 3 - Big O: [Constant, O(1). This method looks at just the first element in an array. It doesn't matter how big the array is; the time to run it won't change.]

def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end



# Snippet 4 - Big O: [Exponential, O(n^2). This method includes a pair of nested loops that work through the same array.  For each item in the array in teh first loop, the second loop runs.]

def duplicates?(array)
  array.each_with_index do |item1, index1|
    array.each_with_index do |item2, index2|
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end



# Snippet 5 - Big O: [O(n*m), not sure what it's called?.  These loops are nested and we must look at them both.  Every time the method looks at 'words' it also has to look at 'endings'.]

words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end



# Snippet 6 - Big O: [Linear, O(n).  The method does one thing: it shoots out the value of each element in the array.  As the array gets bigger, the method takes more time to run. ]

numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end



# Snippet 7 - Big O: [Exponential, O(n^2).  It has two loops running, one nested inside the other: the each.do loop and while loop.  For each item in each loop, the while loop runs.]

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



# Snippet 8 - Big O: [Exponential, O(n^2).  This is the worst case value.  The best case is O(n).  In the worst case scenario, this method has to do two scans, one to find the next lowest value and the other one to run through the rest of the array to see if there is a value that is even lower.]

# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end