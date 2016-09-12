# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O: O(n) -- the method has to look at each item in the array to check if it's larger than the given value. 
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O: O(n) - even though it's going through the customers collection twice, they're stacked, not nested, so even though the second each loop is also going through customers, it's also O(n), so overall the method is O(n). "because they are not nested, we just choose the 'worst' case (though they are the same in this case)"
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

Snippet 3 - Big O: O(1): doesn’t matter how many elements we add to the set, always takes the same amount of time, only ever accessing the first element. 
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O: O(n^2) - For each element within the array (at each index), we're then checking each of the subsequent elements in the array. We have a nested each loop (so we multiply them together). "because we have a O(n) loop inside a O(n) loop which means that we multiply them to get O(n^2)"
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

Snippet 5 - Big O: O(n * m). There's two nested each loops (so it's like #4), but they're different data sets, unrelated to one another. 
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O: O(n). One each loop. 
```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O: O(n^2): We're looking through each item in the collection (starting with the second item) and finding the smallest item. Then, we're taking that smallest item, and moving it to the place in the array where it's no longer smaller then the item we're comparing it to. (It's not quite a nested loop, but in the worst case scenario -- where the numbers are in the totally reverse order - biggest to smallest, it would be O(n^2). 
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

Snippet 8 - Big O: O(n^2): Nested loops on n numbers. n.times is O(n) complexity, and upto(n) is another O(n) loop, inside the times loop. 
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
