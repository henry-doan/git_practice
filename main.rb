require 'colorize'
require 'git'

class Main
  include Git 

  def self.menu
    puts "1 Enter git command".colorize(:cyan)
    puts "2 Exit".colorize(:red)
    choice = gets.to_i
    case choice
    when 1
      puts "Enter git command"
      Git.puts_git(gets.strip) 
    when 2
      abort('Goodbye!')
    else
      puts "invlaid choice".colorize(:cyan)
      menu
    end
  end
end

Main.menu