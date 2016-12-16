#! /usr/bin/env ruby
=begin
#objective of this program was to parse a log file "pi2_logfile"
#ojective 1 - minute and total number of line in that minute
minute,Total
Jan 20 4:8,1
Jan 20 4:9,1
Jan 20 4:10,2
Jan 20 4:12,1
Jan 20 4:13,4
Jan 20 4:14,13
Jan 20 4:15,2
Jan 20 4:16,2
#generate data for app which is seventh column
minute,ccs,app,log,cpp,test,app4,app3,app2,app1,app7,app8,app11,app10
Jan 20 4:8,1,1,0,0,0,0,0,0,0,0,0,0,0,0
Jan 20 4:9,1,0,1,0,0,0,0,0,0,0,0,0,0,0
Jan 20 4:10,2,0,0,1,1,0,0,0,0,0,0,0,0,0
Jan 20 4:12,1,0,0,0,0,1,0,0,0,0,0,0,0,0
Jan 20 4:13,4,1,1,0,0,2,0,0,0,0,0,0,0,0
Jan 20 4:14,13,0,4,1,0,0,1,1,1,1,1,1,1,1
Jan 20 4:15,2,0,0,0,0,0,0,0,0,0,0,0,1,1
Jan 20 4:16,2,0,0,0,0,0,0,0,0,0,0,0,1,1
# Later was asked to keep the program in sniff mode.
=end


def print_output(count,app_name)
print "minute,Total\n"
count.each do |k,v| puts "#{k},#{v["total"]}" end
print "minute"
app_name.each do |m| print ",#{m}" end
print "\n"
count.each do |k,v|
   print "#{k},#{v["total"]}"
    app_name.each do |v2|
      print ",#{v[v2].to_i}"
   end
   print "\n"
end
puts " Enter control -c to exit"
end

begin
count = {}
app_name = []
fhandle = File.open("pi2_logfile","r")
fhandle.each_line do |line|
   words = line.split(/\W+/)
   minute_key = words[0] + " " + words[1] + " " + words[2] + ":" + words[3]
   # check minute_key is there or not ?
   app_name << words[6] if ! app_name.include?(words[6])
   if count.has_key?(minute_key)
      #add it to existing hash
      count[minute_key]["total"] = count[minute_key]["total"].to_i + 1
      count[minute_key][words[6]] = count[minute_key][words[6]].to_i + 1
   else
   #create a new hash and add it to minute_key
   sub_hash = {}
   sub_hash["total"] = sub_hash["total"].to_i + 1
   sub_hash[words[6]] = sub_hash[words[6]].to_i + 1
   count[minute_key] = sub_hash
   end
#words.each do |word| puts word end
   #puts line
while fhandle.eof?
   system "clear"
   print_output(count,app_name)
   sleep 10;
   end
end
rescue Interrupt => e
  puts "Exiting thank you"
end
