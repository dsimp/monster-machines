class Monster
  attr_accessor :machine_name, :trainer_name

  def initialize
    @machine_name = machine_name
    @trainer_name = machine_name
  end

  def start
    puts "\n"
    puts "Hello there, trainer!"
  end
end
