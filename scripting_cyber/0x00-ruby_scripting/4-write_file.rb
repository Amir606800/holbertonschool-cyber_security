#!/usr/bin/env ruby

require 'json'

def merge_json_files(file1_path, file2_path)
  # Read both files
  file1_data = JSON.parse(File.read(file1_path))
  file2_data = JSON.parse(File.read(file2_path))

  # Merge arrays (combine both datasets)
  merged_data = file1_data + file2_data

  # Write back into file2 (as required by your main script)
  File.write(file2_path, JSON.pretty_generate(merged_data))
end
