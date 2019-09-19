class Scraper
  def self.scrape_doc
    doc = Nokogiri::HTML(open("https://www.omniglot.com/language/phrases/index.htm"))
    langs = doc.css("#list2").css("a")

    langs.each do |lang|
      if lang.text != ""
        lang_name = lang.text
        lang_url = lang.attributes["href"].value
        Language.new(lang_name, lang_url)
      end 
    end
  end 

  def self.scrape_phrases(language)
    #if languages.phrases - don't scrape
    doc = Nokogiri::HTML(open("https://www.omniglot.com#{language.url}")) 
    doc.css("tr")[1..10].each do |row| 
       puts "#{row.css("td")[0].text.strip.gsub("\n", ",")}  |   #{row.css("td")[1].text.strip.gsub("\n", ",")}"    
      #  binding.pry
    end 
  end

  # def self.scrape_phrases(language)
  #   #if languages.phrases - don't scrape
  #   doc = Nokogiri::HTML(open("https://www.omniglot.com#{language.url}")) 
  #   phrases = doc.css("tr")[1..11].each do |row|
      
  #     english = row.css("td")[0].text.strip.gsub("\n", ",")
  #     translations = row.css("td")[1].text.strip.gsub("\n", ",")
  #     Phrases.new(english, translations, language)
  #   end 
  #   #binding.pry
  # end
end 

#puts "#{row.css("td")[0].text.strip.gsub("\n", ",").bold}  |   #{row.css("td")[1].text.strip.gsub("\n", ",").bold}" 
#puts "#{row.css("td")[0].text.strip}  |   #{row.css("td")[1].text.strip}"  
#  puts "#{row.css("td")[0].text.strip}  |   #{row.css("td")[1].text.strip}"   

  #binding.pry
    # phrases = doc.css("tr")[1].css("td")[1].text
    # phrases.each do |phrase|
    #   if phrase.text != ""
    #       phrase_text = phrase.text
    #       Phrase.new(phrase_text)
    #   end
    # end 

  #Scraper.scrape_phrases



    #grab phrases for each one make a Phrase AND to this language,phrases
    #binding.pry    
#end 
#https://www.omniglot.com/language/phrases/#{language}.htm
#Scraper.scrape_phrases(abkhaz)



# # class Language
# def self.scrape_phrases
#   doc = Nokogiri::HTML(open("https://www.omniglot.com/language/phrases/abkhaz.htm"))
#   phrases = doc.css("").css("")
# phrases.each do |phrase|

# # end 

#Scraper.scrape_doc

#<a href="/soundfiles/spanish/welcome_es.mp3">Bienvenido</a>

#css("a").attribute("href").value

#<a id="phrases"></a>

#<a href="/language/phrases/welcome.htm">Welcome</a>

#1] pry(Scraper)> doc.css("a").attribute("href").text
#=> "/index.htm" - 

#this works
#doc.css("tr")[1].css("a")[1].text

#doc.css("tr")[1].css("td")[1].text

