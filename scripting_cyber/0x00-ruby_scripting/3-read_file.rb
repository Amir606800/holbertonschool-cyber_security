#!/usr/bin/env ruby

require 'json'

def count_user_ids(path = "file.json")
  file = File.new(path, "r")
  data = JSON.parse(file)

  count = 0

  data.each do |item|
    count += 1 if item.key?("userId")
  end

  count
end
