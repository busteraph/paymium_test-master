require 'json'

data = JSON.parse(File.open('data.json').read)

puts data

output_file = File.open('output.json', 'w')
output_file.write()