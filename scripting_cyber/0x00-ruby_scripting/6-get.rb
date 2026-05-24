#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'

def get_request(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  # Print status in required format
  puts "Response status: #{response.code} #{response.message}"

  # Print body in pretty JSON format
  puts "Response body:"
  puts JSON.pretty_generate(JSON.parse(response.body))
end
