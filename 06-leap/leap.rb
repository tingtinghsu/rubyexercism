class Year
  def self.leap?(year)
    if (year % 4 == 0) && (year % 100 != 0 || year % 400 ==0) 
      "Expected 'true', #{year} is a leap year."
    else
      nil
    end
  end  
end