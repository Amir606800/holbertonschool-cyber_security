#!/usr/bin/env ruby

require 'json'

def count_user_ids(path)
  data = JSON.parse(File.read(path))

  count = 0

  data.each do |item|
    count += 1 if item.key?("userId")
  end

  count
end
