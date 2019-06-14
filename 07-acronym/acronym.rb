class Acronym
  def self.abbreviate(string)
    puts sting.split.map {|w| w[0]}

    # abbreviation = ""
    # string.scan(/\w+/){|w| abbreviation += w.slice(0)}
    # abbreviation.upcase
  end
end

Acronym.abbreviate('Something - I made up from thin air')