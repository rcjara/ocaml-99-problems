#!/usr/bin/env ruby

files = ARGV.map { |f| Dir[f] }
            .flatten
            .sort

native_files = files.map { |f| f.gsub('.ml', '.native') }

puts "building ... "
puts native_files.join("\n")
files.each { |f| `./build.sh #{f}` }

native_files.each do |f|
  result = `./_build/#{f}`
  puts result unless result.empty?
end
