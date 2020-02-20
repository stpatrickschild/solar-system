# Wave 1
class Planet
  # Generate reader methods for the 5 parameters
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "The planet consists of #{name} which is almost a sphere with #{color}, 
    with #{mass_kg}, distance from sun #{distance_from_sun_km}.  #{fun_fact} "
  end
end
