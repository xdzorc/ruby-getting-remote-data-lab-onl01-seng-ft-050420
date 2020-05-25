# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
class Getrequester
  attr_accessor :url
  def initialize(url)
    @url =url
  end
  
  def get_response_body
    uri =URI.parse(@url)
    result =Net::Http.get_response(uri)
    result.body
  end
end