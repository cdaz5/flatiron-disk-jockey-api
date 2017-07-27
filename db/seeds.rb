# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username:'user')

video1 = Video.create(youtube_id:'ahsdlfjsadlkfj', title:'video title', thumbnail:'www.thumbnailurl.com')
video2 = Video.create(youtube_id:'sahdfjkhfjsadlkfj', title:'video 2 title', thumbnail:'www.thumbnailurl2.com')

mashup = Mashup.new
mashup.user = user
mashup.videos << video1
mashup.videos << video2
mashup.title = 'Mashup title'

mashup.save
