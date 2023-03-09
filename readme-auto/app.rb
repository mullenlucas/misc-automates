require 'colorize'

class App
  def options
    [
      '[1]  =>  React',
      '[2]  =>  Next.js',
      '[3]  =>  Python',
      '[4]  =>  Ruby on Rails (RoR)',
      '[5]  =>  Frontend + Backend',
      '[0]  =>  Exit'
    ]
  end

  def run
    user_response = 1
    puts "\n\nCreating the new README.md ...\n\n".colorize(color: :green).bold

    puts "Please enter the name of your project: \n\n"
    @prjct_name = gets.chomp

    while user_response != '0'
      puts "Enter the option corresponding to your project's framework: \n\n".colorize(color: :magenta).italic
      options.each do |choice|
        if choice.include?('Exit')
          puts choice.colorize(color: :red)
        else
          puts choice
        end
      end
      print "\nEnter Option [number]: ".colorize(color: :white).bold
      user_response = gets.chomp
      puts "\n"
      check_selection(user_response)
    end
    puts "Thank you for using this app!\n\n".colorize(color: :cyan).bold if user_response == '0'
  end

  def check_selection(response)
    case response
    when '1'
      puts "\n\n#{@prjct_name} created successfully".colorize(color: :green).italic
    when '2'
      puts "\n\n Header".colorize(color: :green).italic
    when '3'
      puts "\n\n Contents".colorize(color: :green).italic
    when '4'
      puts "\n\n Initializing".colorize(color: :green).italic
    when '5'
      puts "\n\n License\n\n".colorize(color: :green).italic
    when '6'
      puts "\n\n Footer\n\n".colorize(color: :green).italic
    end
  end
end
