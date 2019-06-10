class Complement
  def self.of_dna(dna, rna_complement='')
      dna.each_char { |char| rna_complement << dna_case(char) }
      rna_complement
  end

  def self.dna_case(dna, rna_element='')
    case dna
      when 'C' then rna_element << 'G'
      when 'G' then rna_element << 'C'
      when 'T' then rna_element << 'A'
      when 'A' then rna_element << 'U'
      else rna_element << ''
    end
  end
end