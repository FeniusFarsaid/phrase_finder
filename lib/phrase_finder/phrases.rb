class Phrases

    attr_accessor :english, :translations, :language

    @@all = []
    @@all_english = []
    @@all_translations =[]

    def initialize(english, translations, language)
        @english = english
        @translations = translations
        @language = language
        @@all << self
        @@all_english << self.english
        @@all_translations << self. translations
    end 

    def self.all
        @@all 
    end 

end 