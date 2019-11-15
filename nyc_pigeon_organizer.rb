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
    
    color_
end
