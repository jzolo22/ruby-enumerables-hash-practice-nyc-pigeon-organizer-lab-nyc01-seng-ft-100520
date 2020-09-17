
# def nyc_pigeon_organizer(data)
#   name_hash = {}
#   data.each do |key, value|
#       value.collect do |key2, value2|
#         value2.collect do |name|
#         if !name_hash[name] 
#           name_hash[name] = {}
#         end
#       if !name_hash[name][key]
#         name_hash[name][key] = []
#         # binding.pry
#       end
#       name_hash[name][key].push(key2.to_s)
#       # binding.pry
#     end
#   end
# end

# end




def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), name_hash|
      value.collect do |key2, value2|
        value2.collect do |name|
        if !name_hash[name] 
          name_hash[name] = {}
        end
      if !name_hash[name][key]
        name_hash[name][key] = []
        # binding.pry
      end
      name_hash[name][key].push(key2.to_s)
      # binding.pry
    end
  end
end

end

# push data into an array, then turn array into hash??



# counter = 0 
# while counter < name_hash.length do 
# data.each do |key, value|
#     value.each do |key2, value2|
#       if value2 include? name_hash[counter] do 
#         name_hash[counter] = key2
#       end
#       counter += 1
#   end
# end 
# end 