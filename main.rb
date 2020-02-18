require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary()

  #why we do puts not return is b/c it's you want to save it and not print it. 
end

main