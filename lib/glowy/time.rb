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
  end

end
