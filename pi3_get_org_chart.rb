#! /usr/bin/env ruby
# from 1..100 if number divisible by 4 and 6 print foursix
# restapi with ID return a json which contain following
  #name : nameA
  #post : postA
  #reportee : [ID1 , ID2, ID3]
# reportee array is null if there is no reportee
#task - Get the org structures like
#nameA - postA
#  nameB - postB
#      nameC - postC
#      nameD - postD
#      nameE - postE
#  nameF - postF
#      nameG - postG
#      nameH - postH
#         nameI - postI
#      nameJ - postJ
#  nameK - postK

# problem look like recursion on EID
# break when reportee is zero
require 'net/http'
require 'json'

# for testing having a static data
data = { 10 => {"name" => "nameA", "post" => "postA", "reportee" => [11,12,13]},
11 => {"name" => "nameB", "post" => "postB", "reportee" => [15,16,17]},
12 => {"name" => "nameF", "post" => "postF", "reportee" => [18,19,20]},
13 => {"name" => "nameK", "post" => "postK", "reportee" => []},
15 => {"name" => "nameC", "post" => "postC", "reportee" => []},
16 => {"name" => "nameD", "post" => "postD", "reportee" => []},
17 => {"name" => "nameE", "post" => "postE", "reportee" => []},
18 => {"name" => "nameG", "post" => "postG", "reportee" => []},
19 => {"name" => "nameH", "post" => "postH", "reportee" => [21]},
20 => {"name" => "nameJ", "post" => "postJ", "reportee" => []},
21 => {"name" => "nameI", "post" => "postI", "reportee" => []}}

def org_chart(eid,data,indent)
value = data[eid]
#comment the above line and uncomment below four line to use restapi
#url = 'https://api.linkedin.com/v1/employee/' + eid
#uri = URI(url)
#response = Net::HTTP.get(URI(url))
#value = JSON.parse(response)
#puts value
puts "#{indent}#{value["name"]} - #{value["post"]}"
indent += "   "
value["reportee"].each { |x|
   org_chart(x,data,indent)
} if ! value["reportee"].empty?
end

#main fuction
puts "org chart"
#puts "empty " if data[10]["reportee"].empty?
org_chart(10, data,"")

=begin
output is
org chart
nameA - postA
   nameB - postB
      nameC - postC
      nameD - postD
      nameE - postE
   nameF - postF
      nameG - postG
      nameH - postH
         nameI - postI
      nameJ - postJ
   nameK - postK
=end
