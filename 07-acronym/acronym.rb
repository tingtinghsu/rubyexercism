class Acronym
  def self.abbreviate(string)
    abbreviation = ""
    string.scan(/\w+/){|w| abbreviation += w.slice(0)}
    abbreviation.upcase
  end
end