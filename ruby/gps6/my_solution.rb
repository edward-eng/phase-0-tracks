# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative lets you treat the current working directory as a given without needing to reference the containing directory itself.
# Conversely, require requires you to use ./ to include a file that's in the same directory as the file where require or require_relative is typed.

require_relative 'state_data'

class VirusPredictor
# This method initializes an instance of the virus predictor class. It currently takes 3 params and assigns them as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Runs methods defined further below passing our existing variables as arguments.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #what is this?

# Takes 3 params. print a statement that calculates number of deaths via outbreak depending on population density.
  def predicted_deaths
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

# Takes 2 parameters. Uses control flow to set a value for speed contingent on population density and prints a statement containing that value for speed.
  def speed_of_spread #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

all_states_report = STATE_DATA.each do |state_name, state_info|
  state_report = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  state_report.virus_effects
end

# Reflection Section#=======================================================================









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
alaska.virus_effects


#=======================================================================
# Reflection Section

# =====
# Old Work
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The "require_relative" keyword is used to link another file of
# information; in this case, it is used to link the "state_data.rb"
# so that the information does not have to be written out again
# in this file. "Require_relative" is used for files that are
# related to each other and typically within the same project.
# "Require" is used for files that may be in different directories
# but may be needed for use in multiple applications.

require_relative 'state_data'

class VirusPredictor

  # Initialize method
  # Takes parameters of state, density, and population to
  # create a new class instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population_density = population_density
    @population = population
  end

    # Virus effects method
    # Calls the two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Predicted deaths method
  # Run conditional statements based on population density and population
  # in order to determine how many deaths will occur with the outbreak.
  # A higher population density will result in a higher number of deaths from the outbreak
  def predicted_deaths
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

  # Speed of spread method
  # Runs conditions in order to determine how quickly the outbreak will spread
  # Speed is based on density of population
  # The outbreak will spread more quickly if the population density is higher
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    time = 0.0

    if @population_density >= 200
      time += 0.5
    elsif @population_density >= 150
      time += 1
    elsif @population_density >= 100
      time += 1.5
    elsif @population_density >= 50
      time += 2
    else
      time += 2.5
    end

    puts " and will spread across the state in #{time} months.\n\n"

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
alaska.virus_effects

#========================================================================

# DRIVER CODE

# Create an instance variable for all states and call virus effects method on each state

STATE_DATA.each do |state, state_info|
 temp_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
 temp_state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The 'big' hash uses quotes and the hash rocket for the key whereas the 'small' hash uses a symbol for the key.

# What does require_relative do? How is it different from require?

# Require_relative references a specific file in a specific location. Require is different because it looks for a file across different folders.

# The "require_relative" keyword is used to link another file of
# information; in this case, it is used to link the "state_data.rb"
# so that the information does not have to be written out again
# in this file. "Require_relative" is used for files that are
# related to each other and typically within the same project.
# "Require" is used for files that may be in different directories
# but may be needed for use in multiple applications.

# What are some ways to iterate through a hash?

# You can iterate through a hash using the .each method.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# We didn't have the use the variables as parameters.

# What concept did you most solidify in this challenge?

# Looping through a hash; and in this case, looping through a hash that contained another hash. I also better understand how to create instances of a class and call a method on that instance.