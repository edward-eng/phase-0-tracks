# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The require_relative statement is referencing the state_data file. It's as if the code in the state_data file was in this file.
# A require_relative statement searches a specific location for a file whereas a require statement might search various files for a specific file.
require_relative 'state_data'

class VirusPredictor

  # Initialize Method
  # Takes the parameters of state, population density, and population and makes each one into instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Virus Effects Method
  # Calls the two private methods of predicted deaths and speed of spread.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # Predicted Deaths Method
  # Takes in parameters of population density, population, and state.
  # Run conditional statements based on population density and population to determine how many deaths will occur with the outbreak.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
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

  # Speed of Spread Method
  # Takes in population density and state parameters
  # Run conditional statements to determine speed of outbreak based on population density.
  # The outbreak spreads faster when the population density is higher.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
p alaska
alaska.virus_effects

# Loop through the state data hash to access each state
# Take in the information about each state and use it to create new class instances
# Call virus effects method on each state to print out the result

STATE_DATA.each do |state, state_info|
  temp_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  temp_state.virus_effects
end

puts STATE_DATA.length

# STATE_DATA.each do |state|
#  state.each do |population_density, population|
#   state = VirusPredictor.new(state, population_density, population)
#  end
#  p state
# end
#=======================================================================
# Reflection Section