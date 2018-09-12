require 'httparty'

random_password_response = HTTParty.get('https://makemeapassword.org//api/v1/passphrase/json?pc=10&wc=6')

random_password_json = JSON.parse(random_password_response.body)

p random_password_json['pws']
