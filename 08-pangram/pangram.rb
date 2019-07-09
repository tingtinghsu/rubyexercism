class Pangram
  def self.pangram?(sentence)
    ALPHABET = ('a'..'z').to_a
    (ALPHABET - sentence.downcase.uniq).empty?
  end
end

