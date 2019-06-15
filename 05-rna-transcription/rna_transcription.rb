class Complement
  def self.of_dna(dna)
    str = ""
    rna_complement_hash = {'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}
    dna.split('').to_a.map {|x| str += rna_complement_hash[x] }
    str
  end
end