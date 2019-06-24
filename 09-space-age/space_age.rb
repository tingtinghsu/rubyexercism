class SpaceAge

  EARTH_ORBITAL_PERIOD_IN_SECONDS = 31557600.00

  ORBITAL_PERIOD_IN_EARTH_YEARS = {
    "mercury" => 0.2408467, 
    "venus" => 0.61519726, 
    "mars" => 1.8808158, 
    "jupiter" => 11.862615, 
    "saturn" => 29.447498, 
    "uranus" => 84.016846, 
    "neptune" => 164.79132
  }

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  def on_earth
    @age_in_seconds / EARTH_ORBITAL_PERIOD_IN_SECONDS
  end

  ORBITAL_PERIOD_IN_EARTH_YEARS.each do |planet, orbital_period|
    define_method("on_"+planet) do
      on_earth / orbital_period
    end
  end

end
