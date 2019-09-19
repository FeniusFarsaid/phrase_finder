# CLI Controller
class Phrase_book
    def call 
        Scraper.scrape_doc
        intro
        menu
    end 

    def intro
        puts "Welcome to Phrase Finder."
        sleep 2
        puts "Phrase Finder is a database of conversational phrases in 317 world languages."
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
            elsif input == "exit"
                goodbye
            elsif (1..Language.all.length).include?(input.to_i)
            language = Language.all[input.to_i - 1]
            Scraper.scrape_phrases(language)
                puts "Select another language by number to continue or type 'exit' to exit."
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

    # def user_prompt
    #     puts "To reprint the list of available languages, type 'print' or type 'exit' to exit."
        
    # end


#     # if it is list print_list
        #     # if it is a number in the range - get that language obj - if obj phrases is empty - scrape Scraper.scrape_phrases(obj) then once not empty or if not empty nt phrase list
        #     # if it is exit - goodbye and exit
        #     #     else error message
        
        # end 
            #remember to prompt me again

    # To see a list of available languages or to reprint this list at anytime, type 'list.'
    # To exit, type 'exit.'

    