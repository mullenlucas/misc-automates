require 'colorize'
require_relative 'readmer'

class App

  OPTS = [
    '[1]  =>  React',
    '[2]  =>  Next.js',
    '[3]  =>  Python',
    '[4]  =>  Ruby on Rails (RoR)',
    '[5]  =>  Frontend + Backend',
    '[0]  =>  Exit'
  ].freeze

  SUB_OPTS = [
    '[1] => RoR + React',
    '[2] => Python + React',
    '[3] => RoR + Next.js',
    '[4] => Python + Next.js',
    '[5] => React + Node',
    '[6] => Next.js + Node'
  ].freeze

  def run
    puts "\n\nCreating the new README.md ...\n\n".colorize(color: :green).bold

    puts "Please enter the name of your project: \n\n"
    @project_name = gets.chomp

    puts "Please enter the project's description: \n"
    @project_desc = gets.chomp

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
      interpret_resp(user_response)

      unless valid_selection?(user_response)
        puts "Invalid option selected. Please select a valid option.\n".colorize(color: :red)
        next
      end

      # content = generate_readme_content(user_response)
      content = Readmer.create_header(@project_name)
      content += Readmer.create_tech(@txasx, @opxx)
      write_file(content)
    end

    puts "Thank you for using this app!\n".colorize(color: :cyan).bold if user_response == '0'
  end

  private

  def interpret_resp(response)

    case response
    when '1'
      @txasx = "Ruby on railosss"
      @opxx = '1'
      puts "#{@opxx} selected"
    when '2'
      readme_template += "\n\n SAPerito"
    when '3'
      readme_template += "\n\nContents"
    when '4'
      readme_template += "\n\nInitializing"
    when '5'
      readme_template += "\n\nLicense\n\n"
    when '6'
      readme_template += "\n\nFooter\n\n"
    end

  end

  def write_file(content)
    File.open('Sape.md', 'w') do |file|
      file.write(content)
    end
  end

  def valid_selection?(response)
    response.to_i.between?(0, OPTS.length - 1)
  end
end