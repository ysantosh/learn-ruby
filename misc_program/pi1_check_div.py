#! /usr/bin/env python
# from 1..100 if number divisible by 4 and 6 print foursix
# if divisible by 4 then print four
# if divisible by 6 then print six
for x in range (1,101):
  if x%4==0 and x%6==0:
    print "%d - foursix" %x
  elif x % 4 == 0:
    print  "%d - four" %x
  elif x%6==0:
    print  "%d - six" %x
