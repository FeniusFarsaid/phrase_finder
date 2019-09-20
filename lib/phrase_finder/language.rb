class Language

    attr_accessor :name, :url, :phrases

    @@all = []

    def initialize(name, url)
        @name = name
        @url = url
        @phrases = []
        @@all << self
    end 
    
    def self.all
        @@all
    end 

    def phrases
        Phrases.all.select{|phrase| phrase.language == self}
    end 


end 


