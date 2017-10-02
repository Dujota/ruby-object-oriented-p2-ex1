class Zombie
  @@horde = []
  @@plague_level = 10

  #---constants----
    MAX_SPEED = 5
    MAX_STRENGTH = 8
    DEFAULT_SPEED = 1
    DEFAULT_STENGHT = 3

attr_accessor :speed, :strength

  def initialize(speed, strength)
    @speed =
    if speed > MAX_SPEED
      @speed = DEFAULT_SPEED
    else
      speed
    end

    if strength <= MAX_STRENGTH
      @strength = DEFAULT_STENGHT
    else
      strength
    end
  end

#one line if statements : terniary statements
#check marian's git hub for the short hand for this
# @speed = speed > MAX_SPEED ? DEFAULT_SPEED : speed
# @strength = strength <= MAX_STRENGTH ? DEFAULT_STENGHT : strength

# --------Class Methods

  def self.all
    @@horde
  end

  def self.new_day
    some_die_off
    spawn
    increase_plague_level
  end

  def self.some_die_off
    random_number = rand(0..10).to_i
    # random_number.times { all.pop } -- using pop
    all = all.drop(random_number)
  end
  # This class method should use @@plague_level to generate a random number and then create that number of new zombies, adding each one to @@horde. Use @@max_speed and @@max_strength to generate random values for each new zombie's speed and strength.
  def self.spawn
    spawned = rand(1..@@plague_level) ### this can return 0, therefore value of array is nil!!!!!!!!! started at range of 1 to fix this issue
    spawned.to_i.times do ## needed to convert the rand into integer
      Zombie.all << Zombie.new(rand(MAX_SPEED), rand(MAX_STRENGTH))
    end
  end

  def self.increase_plague_level
    increase = rand(0..2).to_i
    @@plague_level =+increase
  end

#---------INSTANCE METHODS -------

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end


end

puts Zombie.spawn
puts Zombie.all.inspect
