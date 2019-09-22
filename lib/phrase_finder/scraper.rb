class Scraper
  def self.scrape_doc
    doc = Nokogiri::HTML(open("https://www.omniglot.com/language/phrases/index.htm"))
    langs = doc.css("#list2").css("a")[1..324]
    
    langs.each do |lang|
      if lang.text != ""
        lang_name = lang.text
        lang_url = lang.attributes["href"].value
        Language.new(lang_name, lang_url)
      end 
    end
  end 

  def self.scrape_phrases(language)
    if !language.phrases.empty?
      language.phrases 
    else
      doc = Nokogiri::HTML(open("https://www.omniglot.com#{language.url}")) 

      doc.css("tr")[1..11].each do |row|
        english = row.css("td")[0].text.strip.gsub("\n", ",")
        translations = row.css("td")[1].text.strip.gsub("\n", ",")
        Phrases.new(english, translations, language)
        end 
      language.phrases
    end
  end
end 