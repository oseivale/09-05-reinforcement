require 'httparty'

random_password_response = HTTParty.get('https://makemeapassword.org//api/v1/passphrase/json?pc=10&wc=6')

random_password_json = JSON.parse(random_password_response.body)

p random_password_json['pws']

puts

10.times do |password|

  p random_password_json['pws'][0]
end

puts

# playing around again with API call to a different URL

# random_password_reponse_2 = HTTParty.get('https://makemeapassword.org/api/v1/readablepassphrase/json?pc=10&s=RandomLong')
#
# random_password_json2 = JSON.parse(random_password_reponse_2.body)
#
# p random_password_json2['pws']
#
# puts
