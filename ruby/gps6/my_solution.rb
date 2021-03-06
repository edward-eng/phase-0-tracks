# Virus Predictor

# I worked on this challenge with Derrick Carr.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative lets you treat the current working directory as a given without needing to reference the containing directory itself.
# Conversely, require requires you to use ./ to include a file that's in the same directory as the file where require or require_relative is typed.

require_relative 'state_data'

class VirusPredictor
# The method takes in a state as a parameter and sets that as an instance variable upon initializing an instance of the virus predictor class. It also stores state population and density in corresponding variables.
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[state_of_origin][:population]
    @population_density = STATE_DATA[state_of_origin][:population_density]
  end

# Prints a statement that shows a predicted number of deaths in a given time across a given state.
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

# Returns a predicted number of deaths based on a state's population density.
  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      death_rate = 0.4
    elsif @population_density >= 150
      death_rate = 0.3
    elsif @population_density >= 100
      death_rate = 0.2
    elsif @population_density >= 50
      death_rate = 0.1
    else
      death_rate = 0.05
    end
    
    (@population * death_rate).floor

  end

# Determines how fast the outbreak will spread based on a state's population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

  end

end

# ==============================

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

STATE_DATA.each_key { |state_name| VirusPredictor.new(state_name).virus_effects }

#========================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The syntax for the keys (states) in the big hash uses quotes to notify each state as a string rather than a symbol. In the smaller hash (value of each state), symbols are used for population and population density since those symbols (not the values) stay the same across all states. Whereas the strings (keys) in the big hash are different each time.

# What does require_relative do? How is it different from require?

# Require relative allows you to point to a specific file that's in the same directory as the file you're working on. Whereas require searches across different directories for a particular file.

# What are some ways to iterate through a hash?

# You can use .each to iterate through a hash to access keys and values.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# At first, we noticed that we didn't need an arguement calling those variables since the predicted_deaths method was already calling those instance variables within the method itself. Thus, we then realized that the predicted_deaths also didn't need an argument taking 2 parameters. Finally, we were able to refactor the virus_effects method to just print a statement containing the information about predicted deaths and speed of spread of the outbreak for a given state.

# What concept did you most solidify in this challenge?

# I further solidified the concept of a class and having methods inside them. I also familiarized myself even more with creating instances of a class and calling its methods to return a result. I also learned a lot about refactoring, but realized that I need more practice to fully understand the concept.





# ==============================
# ==============================
# ==============================
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

# require_relative 'state_data'

# class VirusPredictor

#   # Initialize method
#   # Takes parameters of state, density, and population to
#   # create a new class instance.
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population_density = population_density
#     @population = population
#   end

#     # Virus effects method
#     # Calls the two private methods
#   def virus_effects
#     predicted_deaths
#     speed_of_spread
#   end

#   private
#   # Predicted deaths method
#   # Run conditional statements based on population density and population
#   # in order to determine how many deaths will occur with the outbreak.
#   # A higher population density will result in a higher number of deaths from the outbreak
#   def predicted_deaths
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   # Speed of spread method
#   # Runs conditions in order to determine how quickly the outbreak will spread
#   # Speed is based on density of population
#   # The outbreak will spread more quickly if the population density is higher
#   def speed_of_spread #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     time = 0.0

#     if @population_density >= 200
#       time += 0.5
#     elsif @population_density >= 150
#       time += 1
#     elsif @population_density >= 100
#       time += 1.5
#     elsif @population_density >= 50
#       time += 2
#     else
#       time += 2.5
#     end

#     puts " and will spread across the state in #{time} months.\n\n"

#   end

# end

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

#========================================================================

# DRIVER CODE

# Create an instance variable for all states and call virus effects method on each state

# STATE_DATA.each do |state, state_info|
#  temp_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
#  temp_state.virus_effects
# end

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