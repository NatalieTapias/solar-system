

class SolarSystem
  attr_reader :star_name, :planets
  attr_writer :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets 
    listing = "Planets orbiting #{ star_name } \n"
    @planets.each_with_index do |planet, i|
      listing += "#{ i+1 }. #{ planet.name } \n"
    end
    return listing
  end
  
  def find_planet_by_name(name_of_planet_given)
    @planets.each do |overall_planet_description|
      if overall_planet_description.name.downcase == name_of_planet_given.downcase
        return overall_planet_description
      end
    end
  end
end



