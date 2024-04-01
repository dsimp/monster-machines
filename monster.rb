require_relative "opponent" 
require_relative "machine"

class Monster
  attr_accessor :machine, :trainer_name, :matchup, :crowd, :moves, :active_machine, :inactive_machine

  def initialize
    @machine = Machine.new
    @trainer_name = trainer_name
    @matchup = Opponent.new
    @crowd = ["BOOOOOOO", "*CROWD ROOOARRSSS*", "YAYYYYYYY"]
    @moves = @moves =  [
      "The Node Negotiator!!",
      "The Unconventional UI!!",
      "The Element Extinguisher!!",
      "The Terminal Terminator!!"
  ]
  @active_machine = active_machine
  @inactive_machine = inactive_machine
  end

  

  def start
    puts "\n"
    puts "Hello there, trainer!"
    puts "Welcome to Monster Machines!!"
    puts "What name do you go by?"
    self.trainer_name = gets.chomp
    puts "#{self.trainer_name.to_s.upcase}! And what is the name of your MONSTER MACHIIINE!?"
    machine.name = gets.chomp.capitalize
    puts "Monster Machine #{machine.name} has entered the arena!!"
    puts "*CROWD ROARS!!*"
    puts "\n"
    puts "Now .."
    puts "\n"
    puts "MONSTER MACHINE #{machine.name} MUST BATTLE!"
    puts "ENTERS!! MONSTER MACHINE #{matchup.name}!!"
    puts "#{crowd.sample}!! What will #{self.trainer_name} do?"
    puts "Enter A to attack or L to leave"
    option = gets.chomp.to_s.capitalize
    @inactive_machine = matchup
    @active_machine = machine
    case option 
    when "A"
      fight
    when "L"
      final
    else puts "Hey #{self.trainer_name} enter 'A' or 'L'"
    end

  end

  def fight
  puts "Woah! looks like #{active_machine.name.upcase} is attacking #{inactive_machine.name} with #{moves.sample}!!!"
  puts "Will #{inactive_machine.name} be able to continue?"
  decision
  end

  def decision
    result = [true, false]
    if result.sample === true 

      if @active_machine == machine
        @active_machine = matchup
      @inactive_machine = machine
      fight
      else 
        @active_machine = machine
        @inactive_machine = matchup
      fight
      end
    else final
    end
  end

  def final
    puts "#{active_machine.name}!! is the winner!"
  end

  

 



  
end
