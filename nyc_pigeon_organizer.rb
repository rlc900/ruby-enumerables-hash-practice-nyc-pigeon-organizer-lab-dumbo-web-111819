def nyc_pigeon_organizer(data)
  new_pigeon_data = {}
  
  female_pigeons = data[:female]
  female_pigeon_data = {}
  
  male_pigeons = data[:male]
  male_pigeon_data = {} 
  
  female_pigeon_data.each |name| do 
    male_pigeon_data[name] = { color: [], gender: [],
  end 
  
  new_pigeon_data = male_pigeon_data.merge(female_pigeon_data)
end
