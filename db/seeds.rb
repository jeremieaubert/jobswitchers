# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating the DB"

question_1 = Question.create(q_test: 'I am an artist', craft_a: '1')
question_2 = Question.create(q_test: 'I enjoy working in an office', tech_a: '1')
question_3 = Question.create(q_test: 'I like to help others', social_a: '1')
question_4 = Question.create(q_test: 'It’s important that I feel my work is meaningful', social_a: '1')
question_5 = Question.create(q_test: 'I am a geek', tech_a: '1')
question_6 = Question.create(q_test: 'I am passionate about Internet and social media', tech_a: '1')
question_7 = Question.create(q_test: 'I am passionate about nature', social_a: '1')
question_8 = Question.create(q_test: 'I enjoy working independently', craft_a: '1')
question_9 = Question.create(q_test: 'I am a creative person', craft_a: '1')

puts "#{Question.count} questions created"
