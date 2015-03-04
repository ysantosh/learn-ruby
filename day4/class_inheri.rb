class Yahoo
    def hello 
        puts "hello"
    end
end

class Spinco < Yahoo
    def hello
        puts "hi"
        super
    end
end


x = Yahoo.new
x.hello

y = Spinco.new
y.hello
