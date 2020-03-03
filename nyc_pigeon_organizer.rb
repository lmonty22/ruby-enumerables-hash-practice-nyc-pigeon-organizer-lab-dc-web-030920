
def nyc_pigeon_organizer(pigeon_data)
  hash = {}
  pigeon_data.each do |attribute, data|
    data.each do |descriptor, names|
      names.each do |name|
        if !hash[name]
          hash[name] = {}
        end
        if !hash[name][attribute]
          hash[name][attribute] = []
        end
        hash[name][attribute] << descriptor.to_s
      end
    end
  end
  hash
end

# def nyc_pigeon_organizer(pigeon_data)
# hash = {}
# pigeon_data.each do |attribute, data|
#   data.each do |descriptor, names|
#     names.each do |pigeon_name|
#       if hash[pigeon_name]
#           if hash[pigeon_name][attribute]
#             hash[pigeon_name][attribute] << descriptor.to_s
#           else 
#             hash[pigeon_name][attribute] = []
#             hash[pigeon_name][attribute] << descriptor.to_s
#           end
#       else hash[pigeon_name] = {}
#         hash[pigeon_name][attribute] = []
#         hash[pigeon_name][attribute] << descriptor.to_s
#       end 
#     end
#   end
# end
# hash
# end