class AnalogCLI
  attr_accessor :id, :uk, :us

  def initialize
    @@db = DB 
    #do I need to change this to a local variable???? or instance variable? 
  end 

  def uk_search
    puts "Please enter your British word for translation:"
    uk_input = gets.strip.downcase

    sql = <<- SQL
      #change this to spelling if we add the table for weird words
      SELECT us FROM analog WHERE uk = uk_input
    SQL 

      trans = db.execute(sql)
        if sql = NULL
          puts "Invalid word. Please try again."
        else
          puts trans
        end 
  end

  def us_search
    puts "Please enter your American word for translation:"
    us_input = gets.strip.downcase
  end


  def show_words
    #connect to DB
    #get SQL query...
  end

  def call(input)
    # Procedure / Interface
    while input != "exit"
      case input.downcase
      when "british"
        uk_search
      when "american"
        us_search
      when "show"
        show_words
      end
    end
  end

# end

call
