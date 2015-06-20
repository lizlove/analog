class AnalogCLI

  def initialize(country)
    @country = country
  end


  # Interface - entire list?
  def show_words(country)
    [:name, :github, :linkedin, :twitter, :rss].each do |attribute|
      puts "#{attribute.to_s.capitalize}: #{student.send(attribute)}"
    end
  end

  def call
    # Procedure / Interface
    input = nil
    while input != "exit"
      puts "Please enter your word for translation:"
      input = gets.strip
      case input
      when "index"
        index
      when "show"
        puts "Which student do you want to see?"
        name = gets.strip # "Avi Flombaum"
        
        student = Student.find_by_name(name)

        url = @students[name]

        student = Student.new(url, @site)
        
        show_student(student)
      end
    end
  end

end

