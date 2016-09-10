# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O: **O(N)**. This is O(N) because in the worst case, where the last item or no item is greater than value, we might have to go through the entire N items of the array once.

```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O: **O(N)**. This is O(N) because there are two O(N) loops in sequence. Each loop is O(N) because each element of the customer hash is visited once.

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

Snippet 3 - Big O: **O(1)**. This is a constant time algorithm because, regardless of how long the array is (how many elements it contains), we are only going to visit the first element.

```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O: **O(N^2)**. This is a quadratic time algorithm because it consists of two nested loops, and in the worst case, we must visit each element of the array (inner loop) for each element in the array (outer loop), for a total of (array length)^2 visits.

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

Snippet 5 - Big O: **O(M*N)**. This is basically an O(N^2) case, except that we are talking about two different arrays, rather than a single array. We still have two nested loops; we have to go through all the things in the inner loop array (endings, length M) for each element in the outer loop array (words, length N). 

```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O: **O(N)**. This is linear time because we must visit each element in the array once. It doesn’t matter that it doesn’t look like a loop, Ruby is just doing the loop internally.

```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O: **O(N^2)**. I know this because you said it in lecture, but I will try to justify why it is the case based on the code as well! The basic answer is that we have two nested loops, which generally correlates to quadratic time. The worst case for selection sort is that the elements are in completely backwards order. Each element must be moved through all the preceding elements to find its place. Here, each element effectively has to move through all the other elements to find its place, although this is not literally true except for the last element in the worst case. However, this edge case illustrates why insertion sort would be considered an O(N^2) algorithm.

Note: for this to work, I think we need the outer loop to be exclusive instead of inclusive of the upper bound—(2…num.length) rather than (2..num.length)—so that it does not try to access num[num.length]. Also, I think the comparison on the inner loop needs to be i >= 0 if we want the first array element to be correctly sorted along with the others. Not relevant at all for the big-O question, but could cause confusion if people try to run it like me. Runs perfectly with these minor edits :)

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

Snippet 8 - Big O: **O(N^2)**. I also know this one because you said it in lecture, but I will again try to justify why it is the case based on the code. We again have a set of two nested loops, and the although it’s never going to be the case that we have to go through all the elements of the array in the inner loop for each element of the array visited by the outer loop, this is the case that the nested loops approach. This case occurs for an individual iteration if the first element in the array must be swapped with a min element in the last position.

Note: The .upto(x) method is inclusive of x, so in this case, it would try to access element a[n]. Not relevant at all for the big-O question, but could cause confusion if people try to run it like me. Runs perfectly with .upto(n-1) :)


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
