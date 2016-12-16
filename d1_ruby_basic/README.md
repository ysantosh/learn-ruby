# Table of Contents
- [Introduction](#Introduction)
  - [Ruby installation](#Ruby-installation)
  - [My first program](#My-first-program)

# Introduction
Ruby is an open source, object-oriented programming language created by Yukihiro “Matz” Matsumoto. Ruby has gained worldwide acceptance as an easy-to-learn, powerful, and expressive language, especially since the advent of Ruby on Rails, a web application framework written in Ruby (http://www.rubyonrails.org). Ruby’s core is written in the C programming language and runs on all major platforms. It is an interpreted rather than compiled language.

## Ruby installation
Follow instruction at https://www.ruby-lang.org/en/documentation/installation/

## My first program
There are three different ways we can work with ruby.
- The First is going to be a single command.
- The Second will be using a Ruby file, actually saving a file that has Ruby code in it. 
- The Third will be IRB, the Interactive Ruby Shell.

### Example of first one
```ruby
$> ruby -e 'print "hello world"'
$> ruby -e 'puts "hello world"' # puts add a new line
```
> **Note** : puts add a new line where print doesn't

### Example of second one
write the content in a file `hello_world.rb` 
```ruby
#! /usr/bin/env ruby
puts "hello world"
```
Compile/Test for syntax  using
``` 
$> ruby -c hello_world.rb 
```
Execute it using
```
$> ruby  hello_world.rb
or
$> ./hello_world.rb
```
### Example of third one
Interactive ruby shell(IRB) 
- Allow us to interact with code in realtime
- work like a calc
- great testing tool

To get a irb shell just type irb `$>irb` which shows irb shell as `irb(main):001>`

```ruby
irb(main):009:0> puts "hello world"
Hello world
=> nil
```
> **Note** : return value shows with sign => and in above case return value is nil



Ruby is Object oriented programming and variable is an exception.

Variables in ruby are lowercase letter with _  in it.
certain notation for scope
Global - add a $ sign in front like $variable
Class - add @@ sign in front like @@variable
Instance - add @ sign in front like @variable
Local/block - just variable like variable


Number class -- Integer and float
        Integer class consist of Fixnum and Bignum
            to get this try 123.class/122321321312321.class on irb
        Float class

String - valuation #{variable_name}


Array
data_set = []
data_set = ["a" "b" "c"]
data_set return all value
data_set[2] return c
data_set[3] will return nil
data_set << "d"  (append <<)
data_set[1] = nil (clear pocket 1)
data_set.clear = clear an array
Note data_set = nil doesn't clear the array but also clear the type . so performing data_set.class will give nilclass

Arrays operation
arr.reverse
arr.sort
arr.uniq - return uniq element but doesn't change arr
arr.uniq! - replace arr with uniq element
arr.join(",") - changes to string
arr.to_s - changes to string
arr.inspect - changes to string
arr = str.split(" ") - a str can be split like this to generate arr
arr.delete_at(2) - delete at position at 2
arr.delete(4) - delete the number 4 in arr
arr.push(4) - similar to arr << 4
arr.pop - remove last element
arr.shift - remove from head
arr.unshift(1) - add in head
arr + arr2 will be a new arr
arr3= arr+ arr2

Hashes - An unordered, object indexed collection of objects (key value pair)
hash = {'first_name'=>'hello',"sec"=>'hello'}
hash['first_name']
To get keys
hash.index('hello') will return first_name
hash.keys
hash.values
hash.length
hash.size
hash.to_a - change to array
hash.clear - simple empty hash
hash = {}
hash['key'] = 'hello'

Symbols
 - similar to string but not string
 - Its a Label
 - Stored in memory ONE time
 - use in hash as label(key) and save memory as it is stored once.
 - symbol is not variable also

 Booleans - used for comparison
 - true/false
 - comparison - == , < > <= => ! != && ||
 - z.nil?
 - 2.between?(1,4)
 - [1,2,3].empty?
 - [].emtpy?
 - [1,2,3].include?(2)
 - {'a'=>1, 'b'=>2}.has_key?('a')  true
 - {'a'=>1, 'b'=>2}.has_value?(2)  true

Ranges
 - range 1..10  
    two kind of range
        inclusive 1..10 - 1..10
        exclusive(three dot) 1...10 - 1..9

- x = 1..10
- x.class will give Range
- x.begin/x.first
- x.end/x.last -include last/end also give 10
- x.include?(10)
- z = [*x]  z is array of range value
- range with alphabet also

Constant
  - constant is variable constant
  - Use uppercase or Upcase
  - constant can be changed but ruby will give warning
