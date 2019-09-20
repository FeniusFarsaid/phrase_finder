class Phrase_book

    def call 
        Scraper.scrape_doc
        puts "Welcome to Phrase Finder."
        sleep 2
        puts "Phrase Finder is a database of conversational phrases in 299 world languages listed below."
        sleep 2
        menu
    end 

    def menu
        print_list
        puts "Here is a list of available languages. Select a language by number or type 'exit' to exit."
        puts "To reprint the list of available languages, type 'print.'"
        input = nil
        while true
            input = gets.chomp

            if input == "print"
                menu
            elsif (1..Language.all.length).include?(input.to_i)
                language = Language.all[input.to_i - 1]
                phrases = Scraper.scrape_phrases(language)
                phrases.each do |phrase|
                    puts "#{phrase.english}  |   #{phrase.translations}"
                    end 
                puts "Select another language by number to continue or type 'exit' to exit."
            elsif input == "exit"
                goodbye
            else
                puts "Invalid request."
            end 
        end
    end 

    def print_list
        Language.all.each.with_index(1) do |lang, i|
            puts "#{i}. #{lang.name}"
        end 
    end 

    def goodbye
        puts "Goodbye, Au Revoir, Adios"
        exit
    end 
end