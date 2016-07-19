class Noble
    
    def initialize(name, title)
        @name = name
        @title = title
    end
    
    def walk
        "#{@title} #{@name} struts forward"
    end
    
    def name
        @name
    end
    
    def title
        @title
    end
end

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"



p byron.name # => "Byron"
p byron.title # => "Lord"