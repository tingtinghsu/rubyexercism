class Complement
  RNA_COMPLEMENT = {'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}
  def self.of_dna(dna)
    dna.each_char.to_a.map {|x| RNA_COMPLEMENT[x] }.join
  end
end