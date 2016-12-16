#! /usr/bin/env ruby
# from 1..100 if number divisible by 4 and 6 print foursix
# if divisible by 4 then print four
# if divisible by 6 then print six
1.upto(100) do |x| 
  if ( x % 4 == 0 && x % 6 == 0 )
    puts "#{x} - foursix"
  elsif (x % 4 == 0 )
    puts  "#{x} - four"
  elsif (x % 6 == 0 )
   puts "#{x} - six" 
  end   
end


=begin
output is
4 - four
6 - six
8 - four
12 - foursix
16 - four
18 - six
20 - four
24 - foursix
28 - four
30 - six
32 - four
36 - foursix
40 - four
42 - six
44 - four
48 - foursix
52 - four
54 - six
56 - four
60 - foursix
64 - four
66 - six
68 - four
72 - foursix
76 - four
78 - six
80 - four
84 - foursix
88 - four
90 - six
92 - four
96 - foursix
100 - four
=end
