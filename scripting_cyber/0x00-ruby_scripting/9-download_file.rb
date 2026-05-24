#!/usr/bin/env ruby

require 'open-uri'
require 'uri'
require 'fileutils'

# Check arguments
if ARGV.length != 2
  puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
  exit
end

url = ARGV[0]
file_path = ARGV[1]

begin
  puts "Downloading file from #{url}..."

  URI.open(url) do |file|
    File.open(file_path, "wb") do |output|
      output.write(file.read)
    end
  end

  puts "File downloaded and saved to #{file_path}."

rescue StandardError => e
  puts "Error: #{e.message}"
end
