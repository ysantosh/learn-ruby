class Yahoo
    attr_accessor "name"
    def self.name=(name)
        @@name = name
    end
    def self.name
        puts @@name
    end
    def get_name
        puts @@name
    end
end

Yahoo.name = "filo1"

x = Yahoo.new

y = Yahoo.new

puts y.get_name

