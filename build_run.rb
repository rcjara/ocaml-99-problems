#!/usr/bin/env ruby

files = ARGV.map { |f| Dir[f] }
            .flatten
            .sort

native_files = files.map { |f| f.gsub('.ml', '.native') }

`rm -r _build`

native_files.each do |f|
  errors = `./build.sh #{f}`
  `rm #{f}`
  puts errors unless errors.empty?
end

native_files.each do |f|
  file_path = './_build/' + f
  if File.exist? file_path
    result = `#{file_path}`
    puts result unless result.empty?
  end
end
