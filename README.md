# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.

4. textbook-curriculum:  https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/04-cs-fundamentals/classroom/03-Sorting-Efficiency.md

## Assignment - Determine the big O
Give the efficiency of each of the following code snippets.

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O: O(n)

Reasoning: I think it bares most resemblance to Snippet EX-A. because the data set size grows the amount of loop iterations grows linearly. So,it depends on how big the array size would be.

"O(N) says that the algorithm's performance is directly proportional to the size of the data set being processed. Scanning an array takes O(N) time."


```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```
#--------------------#

Snippet 2 - Big O: O(n * m)

Reasoning: I debated about this particular problem for a while. I struggled to see if it was O(n) or O(n * m). I finally went with O(n * m) because for every element in the customers array, we are visiting every item in the hash (with such key value pairs as :name "name"). Also, loop within in another loop. Not sure if I can say the rely on each other or simply have relationship.

Like doing this twice? within the same data set?
O(log n) – Given a person’s name, find the corresponding phone number (This is a binary search for a person’s phone number).


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
#--------------------#

Snippet 3 - Big O: O(n)

Reasoning: Snippet EX-A - Big O: O(n) because as the data set size grows the amount of loop iterations grows linearly. Also, "says that the algorithm's performance is directly proportional to the size of the data set being processed. Scanning an array takes O(N) time."

It's looping through an array but only the first item within the array. So it speed seems like it would steadily proportional and linear.


```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```
#--------------------#

Snippet 4 - Big O: O(n^2)

Reasoning:
 O(N^2) says that the algorithm's performance is proportional to the square of the data set size. This happens when the algorithm processes each element of a set, and that processing requires another pass through the set. Also, seemed similar to, "Snippet EX-D - Big O: O(n^2) because in the worst case (i=1) the inner loop runs O(n) times and the outer loop runs O(n), which we multiply to be O(n^2)".

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
#--------------------#
Snippet 5 - Big O: O(n * m)

reasoning: Seems, closet in idea in code,
"Snippet EX-E - Big O: O(n * m) because the two loops do not depend on each other but both run linearly in time" These loops below run within each other but aren't necessarily connected. They each run linearly in time.

```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```
#--------------------#
Snippet 6 - Big O:O(n)

reasoning: Similiar to, "Snippet EX-A - Big O: O(n) because as the data set size grows the amount of loop iterations grows linearly". And because in this case an array looks consistent. It will only grow relatively by size of array.

```ruby
numbers = [1,2,3,4,5,6,7,8,9,10]

def print_array(array)
    array.each {|num| puts num}
end
```
#--------------------#

Snippet 7 - Big O: O(n^2)

Reasoning: Well, since its 'selection sort'. I knew that it would follow the same pattern of the examples used in the curriculum.

The selection sort works by selecting the smallest unsorted item remaining in the list, and then swapping it with the item in the next position to be filled.


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
#--------------------#

Snippet 8 - Big O: O(n^2)

Reasoning:
" O(N^2) says that the algorithm's performance is proportional to the square of the data set size. This happens when the algorithm processes each element of a set, and that processing requires another pass through the set."
"The insertion sort works by inserting each item into its proper place in a final list. The simplest implementation of this requires two list structures - the source list and the list into which sorted items are inserted"


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
