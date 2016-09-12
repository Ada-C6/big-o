# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you
# This is a o(n) because the each value has to go through each element to find the largest value.

Snippet 1 - Big O: O(n)
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
Big O: O(n)
```
# this is also a O(n) because to get the customers name it has to go through each element.  it's not O(n^2) because its not nested.  
Snippet 2 - Big O: O(n)
```ruby
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
Big O: O(n)
```
# this is a O(1) because no matter how large the array is its always going to check the first element only.
Snippet 3 - Big O: O(1)
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
Big O: O(1)
```
#This is an O(n^2) because its an each method with in each method.  The each method has to go through all elements in order to compare it to eachother.  
Snippet 4 - Big O: O(n^2)
```ruby
def duplicates?(array)
  array.each_with_index do |item1, index1|
    array.each_with_index do |item2, index2|
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end
Big O: O(n^2)
```
# This is a O(n*m) because its two arrays with different elements.
Snippet 5 - Big O: O(n*m)
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```
# This is a O(n) because the each method has to go through each element to print them.
that
Snippet 6 - Big O: O(n)
```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
Big O: O(n)
```
# this is a O(log n) because the while loop is cutting the elements.
Snippet 7 - Big O: O(n2)
```ruby
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
Big O: O(n2)
```
# This is O(n^2) because its nested loops.
Snippet 8 - Big O: O(n2)
```ruby
# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end
Big O: O(n2)
```
