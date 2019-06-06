module Gigasecond
  GIGA_SECONDS = 10**9  
  def self.from(time)
    time += GIGA_SECONDS
  end
end