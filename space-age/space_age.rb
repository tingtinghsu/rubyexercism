class SpaceAge
  EARTH_SECONDS = 31557600.00 #EARTH_DAYS * 24 * 60 * 60

  ORBITAL_PERIOD = {mercury: 0.2408467, venus: 0.61519726, mars: 1.8808158, jupiter: 11.862615, saturn: 29.447498, uranus: 84.016846, neptune: 164.79132}

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / EARTH_SECONDS #31.69 Earth-years old
  end

  ORBITAL_PERIOD.each do |k, v|
    define_method('on_'+k.to_s) do
      on_earth / v
    end
  end

end
