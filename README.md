# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O: O(n) (linear) -- this is linear because the amount of time it takes to run this algorithm will increase or decrease at a consistent rate depending on whether the array grows or shrinks.
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O: O(n) (linear)  -- both of these loops are linear for the reasons in Snippet 1, and when we have two not nested things to evaluate we take the one with the greatest complexity.
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

Snippet 3 - Big O: O(1) (constant) -- this is constant because the algorithm will only ever check the first index of the array, no matter how long the array is.
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O: O(n^2) (quadratic) -- this is quadratic because the loops are nested and both are O(n) on their own (resulting in an overall complexity of O(n^2) for this algorithm.)
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

Snippet 5 - Big O: O(n * m) (unsure of official name for this complexity) -- my guess would be quadratic since Crystal mentioned it can be easy to accidently assign these cases as O(n^2) complexity.
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O: O(n) (linear) -- this is linear for the reasons in Snippet 1. (It makes no difference that it is run in-line here.)
```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O: O(n^2) (quadratic) -- this is quadratic for the reasons in Snippet 4. (Also I wrote down insertion as an example of quadratic in my notes based on Crystal's lecture.)
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

Snippet 8 - Big O: O(n^2) (quadratic) -- this is quadratic for the reasons in Snippet 4. (Also I wrote down selection as an example of quadratic in my notes based on Crystal's lecture.)
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
