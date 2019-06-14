class Acronym
  def self.abbreviate(string)
    string.scan(/\w+/).map {|w| w[0]}.join.upcase
  end
end