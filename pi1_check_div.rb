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

