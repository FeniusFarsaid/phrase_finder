class Phrases

    attr_accessor :english, :translations, :language

    @@all = []
    

    def initialize(english, translations, language)
        @english = english
        @translations = translations
        @language = language
        @@all << self
    end 

    def self.all
        @@all 
    end 

end 