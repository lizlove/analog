#ugh wtf fix this eventually

require 'Nokogiri'
require 'open-uri'

def show_words
    
    # index_doc = Nokogiri::HTML(index_html)
    # system(open "http://web0615.students.flatironschool.com/")

    Nokogiri::HTML(system("open http://www.tysto.com/uk-us-spelling-list.html"))

    
    end
show_words

#     puts "What would you like to see?"
# website = gets.strip

# doc = Nokogiri::HTML(system("open http://www.#{website}.uk/"))