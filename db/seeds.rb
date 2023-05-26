AdminUser.create!(email: 'admin@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Создание пользователей
10.times do |n|
  user = User.create!(
    email: Faker::Internet.email,
    password: 'password'
  )

  # Создание постов для каждого пользователя
  2.times do
    user.posts.create!(
      title: Faker::Lorem.sentence(word_count: 3),
      description: Faker::Lorem.paragraph(sentence_count: 3)
    )
  end
end
