require_relative 'planet'
require_relative 'solar_system'

def main
solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary()
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'reddish', 6.39*10e23, 1.4307e6, 'Named after the Roman god of war')
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary

  
    
end

main









