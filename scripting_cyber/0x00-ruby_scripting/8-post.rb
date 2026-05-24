#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'

def post_request(url, body_params)
  uri = URI.parse(url)

  # Create HTTP object
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = (uri.scheme == "https")

  # Create POST request
  request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })

  # Attach JSON body
  request.body = body_params.to_json

  # Send request
  response = http.request(request)

  # Print response status
  puts "Response status: #{response.code} #{response.message}"

  # Print response body as formatted JSON
  puts "Response body:"
  begin
    parsed = JSON.parse(response.body)
    puts JSON.pretty_generate(parsed)
  rescue
    # if empty or invalid JSON
    puts response.body
  end   
end
