class Language

    attr_accessor :name, :url, :phrases

    @@all =[]
    @@id = 0

    def initialize(name, url)
        @name = name
        @url = url
        @phrases = []
        @id = @@id += 1
        @@all << self
    end 
    
    def self.all
        @@all
    end 


end 


