# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html) DONE.
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers. DONE.
3. Do the assignment below and submit a PR with your answers. DONE.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md) DONE.


### Problems for you

Snippet 1 - Big O:
O(n) LINEAR
# ... b/c going over each item of array.

```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```


Snippet 2 - Big O:
O(n) LINEAR
# ... this is going over each item of array, then going over each item of the array again. Since these loops aren't nested, Big O is linear.

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


Snippet 3 - Big O:
O(1) CONSTANT
# ... no matter how many elements are in this array, this algorithm is only looking at one element in each array.

```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```


Snippet 4 - Big O:
O(n^2) EXPONENTIAL
# ... b/c these are two linear loops nested within one another, so n*n is exponential. CRYSTAL, can we go over what this loop is doing in class? I looked up next if--and the loop below does not seem to do what I'd expect.

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


Snippet 5 - Big O:
O(1) CONSTANT
# ... this seems sort of like a trick question because the arrays are provided. Since these arrays are static, I'm saying that Big O is constant, because there's no way to change the length of constant arrays. If the arrays were not provided, I would have said this was O(n^2) because it's two linear algorithms nested within each other, so we multiply n*n.

```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```


Snippet 6 - Big O:
O(n) LINEAR
# ... b/c each element of the array is being iterated over, so as the array grows, so does processing time.

```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```


Snippet 7 - Big O:
O(n^2) EXPONENTIAL
# ... b/c we discussed in class that insertion sort is exponential. I'd like to take another look at this algorithm when I am less tired.

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


Snippet 8 - Big O:
O(n^2) EXPONENTIAL
# ... b/c we discussed in class that selection sort is exponential. I'd like to take another look at this algorithm when I am less tired.

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
