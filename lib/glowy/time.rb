#this class will get us the time of sunsets
require 'net/http'
require 'json'
#'https://api.ipify.org/?format=json'

class Glowy::Time

  def get_location
    uri = URI('https://api.ipify.org/?format=json')
    test_one = Net::HTTP.get(uri)

    puts "This should be ip"
    foo = JSON.parse(test_one)
    ip = foo["ip"]

    uri = URI('http://freegeoip.net/json/?q=' + ip)
    test_two = Net::HTTP.get(uri)
    puts test_two
    bar = JSON.parse(test_two)
    long = bar["longitude"]
    lat = bar["latitude"]

  baz = URI("http://api.sunrise-sunset.org/json?lat=#{lat}&lng=#{long}")
  test_three = Net::HTTP.get(baz)
  alpha = JSON.parse(test_three)
  sunset = alpha["results"]["sunset"]
  sunrise = alpha["results"]["sunrise"]

  puts "THIS IS SUNSET " + sunset
  puts "THIS IS SUNRISE " + sunrise

  end


end
