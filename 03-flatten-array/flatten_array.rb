class FlattenArray
  def self.flatten (array, flattened_array = [])
    array.each do |element|
      if element.is_a?(Array)
        self.flatten(element, flattened_array)
      else
        flattened_array << element unless element.nil?
      end
    end
    flattened_array 
  end 
end