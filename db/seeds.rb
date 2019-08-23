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

#1 create user

user_1 = User.create(email: 'admin@gmail.com', password: '123456')


#2 create Answer with his question and his user
answer = Answer.create(user: user_1, question: question_1)

#3 create a test with his answer
test_1 = Test.create(answer: answer)
#4 create a job with his test

job_tech_1 = Job.create(
  title: 'Web Developer',
  description: 'yyy',
  test: test_1)
job_tech_2 = Job.create(
  title: 'Data scientist',
  description: 'yyy',
  test: test_1)
job_tech_3 = Job.create(
  title: 'Community Manager',
  description: 'yyy',
  test: test_1)
job_tech_4 = Job.create(
  title: 'Digital Analyst',
  description: 'yyy',
  test: test_1)

job_social_1 = Job.create(
  title: 'Assistant Social Worker',
  description: 'yyy',
  test: test_1)
job_social_2 = Job.create(
  title: 'Special Educator',
  description: 'yyy',
  test: test_1)
job_social_3 = Job.create(
  title: 'Quality, Safety & Event Manager',
  description: 'yyy',
  test: test_1)
job_social_4 = Job.create(
  title: 'Environmental Studies Officer',
  description: 'yyy',
  test: test_1)

job_craft_1 = Job.create(
  title: 'Bootmaker',
  description: 'yyy',
  test: test_1)
job_craft_2 = Job.create(
  title: 'Carpenter',
  description: 'yyy',
  test: test_1)
job_craft_3 = Job.create(
  title: 'Jewelry Designer',
  description: 'yyy',
  test: test_1)
job_craft_4 = Job.create(
  title: 'Florist',
  description: 'yyy',
  test: test_1)



puts "#{Question.count} questions created"
puts "#{Job.count} jobs created"
