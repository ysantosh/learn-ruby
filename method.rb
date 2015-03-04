def hello
    puts "hello world"
end

def welcome(name)
    puts "hello #{name}"
end

# addition of two number

def add(n1,n2)
    tsum = n1+n2
end

def add_sub(n1,n2)
    tsum = n1+n2
    tsub = n1-n2
    [tsum,tsub]
end

hello
welcome("santosh")
puts add(5,6)
puts "add_sub_method"
puts add_sub(6,2)
