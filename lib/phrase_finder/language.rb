class Language

    attr_accessor :name, :url

    @@all = []

    def initialize(name, url)
        @name = name
        @url = url
        @@all << self
    end 
    
    def self.all
        @@all
    end 

    def phrases
        Phrases.all.select{|phrase| phrase.language == self}
    end 
end 


