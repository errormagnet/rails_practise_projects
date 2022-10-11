users = [
  { name: 'John', password: 'Dophu' },
  { name: 'Jhonny', password: 'b. Goode' },
  { name: 'Stuart', password: 'Little' },
  { name: 'Lil', password: 'Wayne' },
  { name: 'West', password: 'Side' },
  { name: 'Tom', password: 'Hanks' }
]

def authenticate(name, pw, users)
  users.each do |user|
    if user[:name] == name && user[:password] == pw
      return user
    end
  end
  puts 'Credentials not found'
end

puts 'This issa authenticator'
25.times { print '-' }

puts
puts 'If user exist get back user details'

attempts = 0
while attempts < 3
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp

  authenticated = authenticate(username, password, users)
  if authenticated
    puts authenticated
    attempts = 0
  end

  puts 'Press n to quit or any other key to continue'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end
puts 'You have exceeded the number of attempts' if attempts == 3
