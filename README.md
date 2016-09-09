# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O:
```ruby
def largest?(array, value)
  array.each do |item|              # O(n)
    return false if item > value    
  end
  return true
end
```
####O(n)

Snippet 2 - Big O:
```ruby
def info_dump(customers)
  puts "Customer Names: "
  customers.each do |customer|    # O(n)
    puts "#{customer[:name]}"
  end
  puts "Customer Locations: "     
  customers.each do |customer|    # O(n)
    puts "#{customer[:country]}"
  end
end
```
####O(n)

Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false    # O(1)
end
```
####Constant

Snippet 4 - Big O:
```ruby
def duplicates?(array)
  array.each_with_index do |item1, index1|      # O(n)
    array.each_with_index do |item2, index2|    # O(n) nested
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end
```
####O(n^2)

Snippet 5 - Big O:
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|        # O(n)
  endings.each do |ending|  # O(m) nested
    puts word + ending
  end
end
```
####O(n * m)

Snippet 6 - Big O:
```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}     # O(n)
end
```
####O(n)

Snippet 7 - Big O:
```ruby
# this is insertion sort
(2..num.length).each do |j|           # O(n)
    key = num[j]
    i = j - 1
    while i > 0 and num[i] > key      # O(n) nested
        num[i+1] = num[i]
        i = i - 1
    end
    num[i+1] = key
end
```
#### O(n^2)

Snippet 8 - Big O:
```ruby
# this is selection sort
n.times do |i|                                    # O(n)
  index_min = i
  (i + 1).upto(n) do |j|                          # O(n) nested
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end
```
####O(n^2)
