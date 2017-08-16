require 'pry'
require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "Main Menu".colorize(:cyan)
  puts '1: Enter a Git Command'
  puts '2: Exit'.colorize(:red)
  choice = gets.to_i
  case choice
    when 1
      puts "Enter a git Command"
      puts_git(gets.strip)
    when 2
      puts "Thanks for using the git command"
      exit
    else
      puts "Invalid choice!"
      menu
  end
  menu # made a loop (Recursion)
end

menu
