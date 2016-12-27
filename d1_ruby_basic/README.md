# Table of Contents
- [Introduction](#Introduction)
  - [Ruby installation](#Ruby-installation)
  - [My first program](#My-first-program)

# Introduction
Ruby is an open source, object-oriented programming language created by Yukihiro “Matz” Matsumoto. Ruby has gained worldwide acceptance as an easy-to-learn, powerful, and expressive language, especially since the advent of Ruby on Rails, a web application framework written in Ruby (http://www.rubyonrails.org). Ruby’s core is written in the C programming language and runs on all major platforms. It is an interpreted rather than compiled language.

## Ruby installation
Follow instruction at https://www.ruby-lang.org/en/documentation/installation/

## Invoke ruby
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
hello world
=> nil
```
> **Note** : return value shows with sign => and in above case return value is nil

Another example where return value is not nil
```ruby
irb(main):010:0> 4+5
=> 9
#return value is 9
```
## Tools for my first program

### Comments
In ruby comments start with hash or pound character (#), or =begin and =end
```ruby
# I am single line comment , ignore me
puts "my name is santosh" # I am comment in the same line as code, code will be executed and I will be ignored
=begin
multiline comment started with (=begin)
keep saying bla bla 
bla bla bla bla
comment end with (=end) string
=end
```

### variable name
Ruby is Object oriented programming and variable is an exception. Variables in ruby are lowercase letter with _  in it.
- Example includes
  - name = "santosh yadav"
  - age = 34
  - float_age = 34.0
  - arr = [1,2,3,4]
- Variable doesn't have data type . A variable can hold any data type.

### Get user input
In ruby we use gets to get user input and Examples are
- name = gets.chomp
- age = gets.chomp.to_i

### Display string with string evaluation
puts and print is used to display output. puts add a new line where print doesn't. Examples
- puts "My name is santosh yadav"
- print "Enter your age:"
- puts "My name is #{name}"

## My first program
Get name and age and return half of the age entered.
```ruby
#! /usr/bin/env ruby
print "Enter your name : "   # print will not add new line
name = gets.chomp            # remove \n and add rest to variable name 
print "Enter your age : "
age = gets.chomp.to_i        # to_i convert string to integer
half_age = age/2
puts "Hi , My name is #{name} and half age is #{half_age}"  # string manipulation using #{variable}
```
Output
```bash
./a.rb
Enter your name : santosh Yadav
Enter your age : 34
Hi , My name is santosh Yadav and half age is 17

Next run
./a.rb
Enter your name : santosh Yadav
Enter your age : sa
Hi , My name is santosh Yadav and half age is 0
```

# Integer
An Integer (int type) is a whole number such as 1, 5. All whole number is instance of Integer class and this class is the basis for the two concrete classes that hold whole numbers, Bignum and Fixnum. More info - https://ruby-doc.org/core-2.2.0/Integer.html

## Types 
### Fixnum
Holds Integer values that can be represented in a native machine word (minus 1 bit). If any operation on a Fixnum exceeds this range, the value is automatically converted to a Bignum.
Fixnum objects have immediate value. This means that when they are assigned or passed as parameters, the actual object is passed, rather than a reference to that object.

examples - 
- 45 , 3400 or 34_00 or 340_0 etc
- 0x96b Hexadecimal
- 0b101011010110 Binary

### Bignum
Bignum objects hold integers outside the range of Fixnum. Bignum objects are created automatically when integer calculations would otherwise overflow a Fixnum. When a calculation involving Bignum objects returns a result that will fit in a Fixnum, the result is automatically converted.
For the purposes of the bitwise operations and [], a Bignum is treated as if it were an infinite-length bitstring with 2’s complement representation.
While Fixnum values are immediate, Bignum objects are not—assignment and parameter passing work with references to objects, not the objects themselves.

examples
- 24110000000000000000

## Methods
- to_i - Convert string to number eg - `num = "40" ; puts num.to_i`
- odd?/even? - Return true or false eg - `40.odd? #return false`
- pred/next - Returns the Integer equal to int - 1. ` 40.pred # return 39 `
- times {|i| block } - Iterate the block int times eg - ` 5.times { |i| puts i," " } # 0,1,2,3,4`
- upto(limit) {|i| block } - Iterates the given block, passing in integer values from int up to and including limit.
- downto(limit) {|i| block } - Iterates the given block, passing in integer values from int up to and including limit.
```ruby
5.upto(10) { |i| print i, " " }
#=> 5 6 7 8 9 10
5.downto(1) { |n| print n, ".. " }
print "  Liftoff!\n"
#=> "5.. 4.. 3.. 2.. 1..   Liftoff!"
```
## Integer operation 
|Operation |	Symbol |	Example |	Result|
| --- | --- | --- | --- | 
|Addition 	|+ |	30 + 10 |	40|
|Subtraction | 	- |	30 - 10 |	20|
|Multiplication |	* |	30 * 10 |	300|
|Division |	/ 	|30 /10 |	3|
|Modulus (remainder) | 	% |	30 % 10 |	0|
|Exponent (power) |	** |	30**2 |	900|

# Float
The Float class is for floating-point numbers. It is the native architecture’s double-precision floating-point representation internally.
The Complex class represents complex numbers—that is, a number expressed in the form a+bi where i is an imagi‐ nary number (or unit). Once a part of the standard library, Complex is now in Ruby’s core.
Rational represents rational numbers—that is, the quotient of two integers in the form a/b. Now part of Ruby’s core.


# String
A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters. String objects may be created using String::new or as literals. More info https://ruby-doc.org/core-2.2.0/String.html

Example
- name = "santosh yadav"
- strvar = str("new world")

# File handle

# My second program

