# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O: n

**O(n): for the worst case scenario, each element in the array will be checked and then none of them will be greater than the value**
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O:(n)

**O(n+n)=(2n)=(n): each element will be checked twice, but in separate operations**
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
```

Snippet 3 - Big O: (1)
*O(1): the amount of time should not change if the array gets larger because it will still only have to check the first element*
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O: (n^2)

**O(n^2): contains nested loops; each item in the array will have to be visted for the first .each and for every element, the array will also need to be visited array.length times to check if that value occurs again.**
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
```

Snippet 5 - Big O:(n^2)

**O(n^2):contains nested loops; each word will have to be printed endings.length times with ending concatenated with it**
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O:(n)

**O(n): only requires every item in array to be visted once**
```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O: (n^2)

**O(n^2):contains nested loops**
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
```

Snippet 8 - Big O: (n^2)

**O(n^2):contains nested loops**
```ruby
# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end
```
