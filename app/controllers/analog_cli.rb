require 'open-uri'
require 'Nokogiri'

# class AnalogCLI

  # def initialize(country)
  #   @country = country
  # end

  def british
    puts "Please enter your word for translation:"
    british_input = gets.strip
  end

  def us
    puts "Please enter your word for translation:"
    us_input = gets.strip
  end


  def show_words
    Nokogiri::HTML(system("open http://www.tysto.com/uk-us-spelling-list.html"))
  end

  def call
    # Procedure / Interface
    puts ""
    input = nil
    while input != "exit"
      puts "Please choose the version of English that you would like to translate from: 'British' or 'US'.\nTo see a list of all words and translations please type 'show'"
      input = gets.strip
      case input
      when "british"
        british
      when "us"
        us
      when "show"
        show_words
      end
    end
  end

# end

call
