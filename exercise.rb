require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json['objects'].each do |object|
  p object['name']
end

puts

# Playing around with different API calls

toronto_elections_response = HTTParty.get('https://represent.opennorth.ca/candidates/')

toronto_elections_json = JSON.parse(toronto_elections_response.body)

toronto_elections_json['objects'].each do |object|
  p object['name']
end
