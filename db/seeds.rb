require 'open-uri'

Profile.delete_all
User.delete_all

User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
Profile.connection.execute('ALTER SEQUENCE profiles_id_seq RESTART WITH 1')

User.create!({email: 'isaacshoe01@gmail.com',password: 'password'})
User.create!({email: 'jo@jerk.com',password: 'password'})
User.create!({email: 'demo_user@demo.com', password: 'demouser'})

Profile.create!({user_id: 1, name: 'jo yang'})
Profile.create!({user_id: 2, name: 'i wei'})
Profile.create!({user_id: 2, name: 'real jo'})