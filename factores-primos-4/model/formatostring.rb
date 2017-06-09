class FormatoString
    
  def formatear(array)
    
    arraystring = ""
    
    array.each do |x|
      arraystring += x.to_s + ","
    end
    
    if arraystring.length > 0
      arraystring = arraystring[0...-1]
    end
    
    return arraystring
    
  end
  
end
