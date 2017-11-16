require 'colorize'
require 'git'

class Main
  include Git 

  def self.mainmenu
    puts "1 Enter git command".colorize(:red)
    puts "2 Exit".colorize(:blue)
    choice = gets.to_i
    case choice
    when 1
      puts "Enter git command"
      Git.puts_git(gets.strip) 
    when 2
      abort('Goodbye!')
    else
      puts "invlaid choice".colorize(:black)
      menu
    end
  end
end

Main.menu