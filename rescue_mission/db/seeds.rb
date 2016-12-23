# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = Question.create([
  { title: 'How do I turn digital lead in digital gold?', username: 'billybob123', body: 'I am looking for the digital alchemy secret. I am interested in the 21st century version of alchemy. Alchemists sought to change lead into gold (Bitcoin does not count as gold FYI). Does anyone know the digital Nicolas Flammel?' },
  { title: 'Where are my pants? A quest to prevent drafts.', username: 'davidkoechner', body: 'I have lost my pants somewhrere. Have you seen them? They were Gabberdean and pleated. The pleats create an optical illusion that can make me look tumescent.' },
  { title: 'What is the meaning of digital life, the Universe, and everything?', username: 'thanksforallthefish22', body: 'According to Deep Thought, the answer to the Ultimate Question of life, the Universe, and everything is 42. Seven and a half million years has lead to that answer. Do not forget to bring your towel.' }
  ])
