# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O: O(n) - for the .each method, as the array grows, the amount of time it takes to iterate through the loop is linear
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O: O(n) - For each of these loops, the amount of time increases in a linear fashion as the array grows, but because they are not nested, their values are added, so O(n) + O(n) = O(2n), and the constant, 2, is dropped
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

Snippet 3 - Big O: O(1) - This is only evaluating the first element of the array, so it does not matter how large the array becomes.
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O: O(n^2) - Each .each loop has an efficiency of O(n); because they are nested, their values are multiplied, and O(n) * O(n) = O(n^2)
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

Snippet 5 - Big O: O(1) = If I'm interpreting this correctly, these are effectively .times loops because the size of the arrays is defined as words.length = 3 and endings.length = 3, and two nested O(1) loops just gives an overall O(1) value. However, if the size of words or endings was a variable, this would end up being an O(n^2) efficiency, as described in Snippet 4 above.
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O: O(n) - As the size of the array changes in the print_array method, the amount of time it takes to run will increase or decrease linearly.
```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O: O(n^2) - There are two nested loops (.each and while), each with a Big O of O(n). Because they are nested, the total value is O(n) * O(n) = O(n^2). Also, you said during class that an insertion sort has a Big O of O(n^2).
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

Snippet 8 - Big O: O(n^2) - Because the .times loop runs for 'n' times, I'm assuming that this is a variable that changes with the size of an array, so it's basically a .each loop. And while I haven't seen it before, the .upto(n) looks like it also acts sort of like an .each loop. Both of these have a Big O of O(n), and when multiplied together, it evaluates to O(n^2).
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
