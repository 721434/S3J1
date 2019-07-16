def ftoc(fahrenheit_degrees)
    celsius = (fahrenheit_degrees - 32) / 1.8
  return  celsius.round(2)
  end
  
  def ctof(celsius_degrees)
    
  fahrenheit = celsius_degrees * 1.8 + 32
  return  fahrenheit.round(2)
  end