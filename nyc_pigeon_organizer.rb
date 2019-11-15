def nyc_pigeon_organizer(data)
  new_pigeon_data = {}
  
  female_pigeons = data[:female]
  female_pigeon_data = {}
  
  male_pigeons = data[:male]
  male_pigeon_data = {} 
  
  female_pigeons.each |name| do 
    male_pigeon_data[name] = { color: [], gender: ["female"], lives: [] }
    end
   male_pigeons.each |name| do 
      female_pigeon_data[name] = { color: [], gender: ["male"], lives: [] }
    end 
    
    new_pigeon_data = male_pigeon_data.merge(female_pigeon_data)
    
    pigeons_colors = data[:color]
     
    new_pigeon_data.each do |name, attribute_hash|
      pigeons_colors.each do |color, color_array|
        if color_array.include?(name)
        new_pigeon_data[name][:color].push(color.to_s)
       end 
       end 
    end 
    
    location_of_pigeons = data[:lives]
    
    new_pigeon_data.each do |name, attribute_hash|
      location_of_pigeons.each do |location, location_array|
        if location_array.include?(name)
          new_pigeon_data[name][:lives].push(location)
        end 
      end 
    end 
    new_pigeon_data
end
