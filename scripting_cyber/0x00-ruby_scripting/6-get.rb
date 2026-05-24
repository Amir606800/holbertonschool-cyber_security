#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'

def get_request(url)
  uri = URI.parse(url)

  response = Net::HTTP.get_response(uri)

  output = {
    status_code: response.code.to_i,
    body: response.body
  }

  puts JSON.pretty_generate(output)
end
