require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

    
      def self.scrape_index_page(https://www.omniglot.com/index.htm)
        page = Nokogiri::HTML(open(https://www.omniglot.com/index.htm))
        binding.pry
      end 

    # url = 'https://omniglot.com/index.htm'

#   def self.scrape_page
#     page = Nokogiri::HTML(open(url))
# binding.pry 
#   end 

end 