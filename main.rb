require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "reddish", 6.39 * 10e23, 1.4307e6, "Named after the Roman god of war")
  solar_system.add_planet(mars)

  while true
    puts "what do you want to see next? "
    input = gets.chomp()
    case input
    when "list_planets"
      puts solar_system.list_planets
    when "planet_details"
      puts "what planet do you want details on? "
      planet_name = gets.chomp()
      planet_array = solar_system.planets
      planet = planet_array.find { |pl| pl.name.upcase == planet_name.upcase }
      puts planet.summary
    when "add_planet"
      puts "Which planet do you want to add? "
      add_planet = gets.chomp()
      puts "what color is your planet? "
      planet_color = gets.chomp()
      puts "what is the mass of your planet in kg? "
      mass_of_planet = gets.chomp().to_i
      puts "what is the distance of your planet in km from the sun"
      distance_from_sun = gets.chomp().to_i
      puts "Give me a fun fact about your planet! "
      fun_fact = gets.chomp()
      new_planet = Planet.new(add_planet, planet_color, mass_of_planet, distance_from_sun, fun_fact)
      solar_system.add_planet(new_planet)
    when "exit"
      break
    end
  end
end

main()
