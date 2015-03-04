class Yahoo
    #attr_accessor will do the job of name= and name method
    attr_accessor "company"
    def hello
        puts "hello world in class yahoo"
    end
    def name=(var)
        @var = var
    end
    def name
        puts @var
    end
end

x=Yahoo.new
puts x.class

#there are some default methods which can be get through 
#puts x.methods

puts x.hello

x.name="hello dear"
x.name

x.company="Yahoo"

puts x.company
