# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# Release 1: EXPLANATION OF require_relative

# require_relative is a statement that imports another file into the current one for use.  This is useful if for example you needed to import data from a separate file for use in the current program.

# Release 2: Analyze state_data

# state_data is a file that stores a hash of all the states.  In the STATE_DATA hash, each key (which is a string with a name of a state) is assigned with the rocket notation (=>) a NESTED hash of data values for population density, population, region, and regional spread using the colon (:) notation.  It can be noted that the colon notation requires that its key be a symbol and can be only used in Ruby 1.9 or later.

require_relative 'state_data'

class VirusPredictor

# When an object of class VirusPredictor is created, it it initialized with the values for state, population density, population, region, and regional spread and instance variables are created for each parameter.

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

# virus_effects method calls two other class methods: predicted_deaths and speed_of_spread

  def virus_effects  #HINT: What is the SCOPE of instance variables? Only methods called to this instance can access the values of these variables
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method?  The private keyword designates any method after it (and before the end of the class declaration) to be only accessible by the current object.  The reciever of a private method is always the current object and cannot be any other object.  If it were moved above the virus_effects method, it would make the method private also.

# Calculates the number of predicted deaths based on population density and prints it to console

  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculates the speed of spread in months and prints it to console

  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

# Release 4 new feature to report all states.  It iterates over all keys in the hash, creates a new object for each state and then calls the virus_effects method on it.
  STATE_DATA.each_key {|state|
    state_report = VirusPredictor.new(state, STATE_DATA[state][:population_density],STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]) 
    state_report.virus_effects
  }


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
=end