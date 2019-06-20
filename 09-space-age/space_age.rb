class SpaceAge

  EARTH_ORBITAL_PERIOD_IN_SECONDS = 31557600.00

  ORBITAL_PERIOD_IN_EARTH_YEARS = {
    "on_mercury" => 0.2408467, 
    "on_venus" => 0.61519726, 
    "on_mars" => 1.8808158, 
    "on_jupiter" => 11.862615, 
    "on_saturn" => 29.447498, 
    "on_uranus" => 84.016846, 
    "on_neptune" => 164.79132
  }

  def initialize(earth_years_in_seconds)
    @earth_years_in_seconds = earth_years_in_seconds
  end

  def on_earth
    @earth_years_in_seconds / EARTH_ORBITAL_PERIOD_IN_SECONDS
  end

  ORBITAL_PERIOD_IN_EARTH_YEARS.each do |on_planet, orbital_period|
    define_method(on_planet) do
      on_earth / orbital_period
    end
  end

end
