
## Examples

Snippet EX-A - Big O: O(n) because as the data set size grows the amount of loop iterations grows linearly
```ruby
(1..data.length).each do
  puts "hello"
end
```

Snippet EX-B - Big O: O(n) because even though there is a loop inside of a loop here, the inside loop runs a fixed number of times making it constant time, and only the outer loop grows linearly
```ruby
(1..data.length).each do
  (1..10).each do
    puts "hello"
  end
end
```

Snippet EX-C - Big O: O(n^2) because we have a O(n) loop inside a O(n) loop which means that we multiply them to get O(n^2)
```ruby
(1..data.length).each do
  (1..data.length).each do
    puts "hello"
  end
end
```

Snippet EX-D - Big O: O(n^2) because in the worst case (i=1) the inner loop runs O(n) times and the outer loop runs O(n), which we multiply to be O(n^2)
```ruby
(1..data.length).each do |i|
  (i..data.length).each do
    puts i
  end
end
```

Snippet EX-E - Big O: O(n * m) because the two loops do not depend on each other but both run linearly in time
```ruby
(1..data.length).each do
  (1..otherdata.length).each do
    puts "hello"
  end
end
```

Snippet EX-F - Big O: O(n * m) because for every element in the data array (n) we must visit every element in the hash for that element (m).
```ruby
data.each do |item|
  item.each do |key, value|
    puts "#{key} maps to #{value}"
  end
end
```

Snippet EX-G - Big O: O(n) because in order to get all the keys in the hash, we must visit every element one time, which is a linear operation
```ruby
puts hash.keys
```

Snippet EX-H - Big O: O(n) because the first set of nested loops is O(n) * O(1) = O(n) and then the next sequential loop is also O(n), but because they are not nested, we just choose the 'worst' case (though they are the same in this case)
```ruby
data.each do |i|
  3.times do
    puts i
  end
end
data.each do
  puts "hello"
end
```
