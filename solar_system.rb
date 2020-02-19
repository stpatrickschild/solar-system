class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
    end

    def add_planet(planet)
      @planets << planet
    end
    def list_planets 
      @planets 
      planet_names = []
      planets.each do|planet|
      planet_names << planet.name
    end
    planet_names
  end

  def find_planet_by_name(planet_names)
    @planets.each do |planet|
      if planet.name.upcase == planet_names.upcase
      return planet
      end
    end
  end
end