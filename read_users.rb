require 'json'

# Зчитування JSON-файлу
file = File.read('users.json')
users = JSON.parse(file)

total_age = 0

puts "Список людей"
puts "-------------------"

users.each_with_index do |user, index|
  puts "#{index + 1}. Ім'я: #{user['name']}, Вік: #{user['age']}"
  total_age += user['age']
end

average_age = total_age.to_f / users.size

puts "-------------------"
puts "Середній вік: #{average_age.round(2)}"
