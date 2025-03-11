require 'net/http'
require 'json'
require 'faker'

# Neighbourhood data
# neighbourhood_uri = URI('https://data.winnipeg.ca/resource/8k6x-xxsy.json')
# neighbourhood_resp = Net::HTTP.get(neighbourhood_uri)
# neighbourhood_data = JSON.parse(neighbourhood_resp)

# neighbourhood_data.each do |hood|
#   Neighbourhood.create(name: hood['name'])
# end

# puts "Seeded #{Neighbourhood.count} neighbourhoods."

# Park data
# park_uri = URI('https://data.winnipeg.ca/resource/tx3d-pfxq.json?$limit=50')
# park_resp = Net::HTTP.get(park_uri)
# park_data = JSON.parse(park_resp)

# park_data.each do |park|
#   # some of the names are capitalized
#   normalized_neighbourhood_name = park['neighbourhood'].strip.titleize
#   neighbourhood = Neighbourhood.find_by(name: normalized_neighbourhood_name)
#   if neighbourhood
#     neighbourhood.parks.create(name: park['park_name'])
#   else
#     puts "Neighbourhood not found: #{normalized_neighbourhood_name}"
#   end
# end

# puts "Seeded #{Park.count} parks."

# Contractor data
# contractor_uri = URI('https://data.winnipeg.ca/resource/4h34-ntey.json?$limit=50')
# contractor_resp = Net::HTTP.get(contractor_uri)
# contractor_data = JSON.parse(contractor_resp)

# contractor_data.each do |contractor|
#   Contractor.create(full_name: contractor['contractor_name'])
# end

# puts "Seeded #{Contractor.count} contractors."

# Business data

50.times do 
  neighbourhood = Neighbourhood.order("RANDOM()").first
  neighbourhood.businesses.create(name: Faker::Company.name)
end

puts "Seeded #{Business.count} businesses."