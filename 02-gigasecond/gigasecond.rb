module Gigasecond
  GIGASEC = 10**9  
  def self.from(time)
    time += GIGASEC
  end
end