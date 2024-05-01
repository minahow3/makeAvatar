# test_api.rb
require 'net/http'
require 'json'

uri = URI('http://localhost:3000/api/v1/register_user_with_part_set')
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri)
request['Content-Type'] = 'application/json'
request.body = {
  user: {
    name: 'John Doe'
  },
  part_set: {
    part_id: 1,
    x_position: 10,
    y_position: 20
  }
}.to_json

response = http.request(request)

puts response.code
puts response.body