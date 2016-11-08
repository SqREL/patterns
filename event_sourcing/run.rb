require "./state"
require "./event_store"

require "./events/base_event"
require "./events/update_email"
require "./events/update_name"
require "./events/update_surname"

user = StateObject.new
user.update_email "isqrel@gmail.com"
user.update_name "Vasilij"
user.update_surname "Melnuchyk"
user.update_name "Vasja"
user.update_name "Vasyl"
user.update_surname "Melnychuk"
user.update_email "vasilij@melnychuk.me"

puts "Old user:"
puts user

newuser = EventStore.build
puts "New user"
puts newuser
