require 'colorize'
require_relative 'readmer'

class App

  OPTS = [
    '[1]  =>  React',
    '[2]  =>  NextJS',
    '[3]  =>  Ruby on Rails (RoR)',
    '[4]  =>  Python',
    '[5]  =>  Frontend + Backend',
    '[0]  =>  Exit'
  ].freeze

  SUB_OPTS = [
    '[1] => RoR + React',
    '[2] => Python + React',
    '[3] => RoR + NextJS',
    '[4] => Python + NextJS'
  ].freeze

  def run
    puts "\nCreating the new README.md ...\n".colorize(color: :green).bold

    puts "Please enter the project's repository link: \n"
    project_link = gets.chomp.to_s

    puts "Please enter the name of your project: \n"
    project_name = gets.chomp

    puts "Please enter the project's description: \n"
    project_desc = gets.chomp

    user_response = 1
    while user_response != '0'
      puts "Enter the option corresponding to your project's framework: \n\n".colorize(color: :magenta).italic
      OPTS.each do |choice|
        if choice.include?('Exit')
          puts choice.colorize(color: :red)
        else
          puts choice
        end
      end
      print "\nEnter Option [number]: ".colorize(color: :white).bold
      user_response = gets.chomp
      puts "\n"
      # Extract the text portion of the selected option
      selected_option = OPTS.find { |opt| opt.start_with?("[#{user_response}]") }
      selected_option = selected_option.split('=>').last.strip if selected_option
      interpret_resp(user_response)

      unless valid_selection?(user_response)
        puts "Invalid option selected. Please select a valid option.\n".colorize(color: :red)
        next
      end

      content = Readmer.create_header(project_name, project_desc)
      content += Readmer.create_tech(selected_option, @opxx)
      content += Readmer.create_setup(project_link, @opxx)
      content += Readmer.create_footer
      write_file(content)
    end

    puts "Thank you for using this app!\n".colorize(color: :cyan).bold if user_response == '0'
  end

  private

  def interpret_resp(response)

    case response
    when '1'
      @opxx = '1'
    when '2'
      @opxx = '2'
    when '3'
      @opxx = '3'
    when '4'
      @opxx = '4'
    end
  end

  def write_file(content)
    File.open('README.md', 'w') do |file|
      file.write(content)
    end
  end

  def valid_selection?(response)
    response.to_i.between?(0, OPTS.length - 1)
  end
end