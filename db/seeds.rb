# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: "test@test.com",
    password: "123456",
    password_confirmation: "123456"
)

Article.create!(
    title: "Rails Girls Welcome App",
    description: "Check the article about Rails Girls App",
    user_id: User.first.id
)

Article.create!(
    title: "Rails Girls Idea App",
    description: "Check the article about Rails Idea App",
    user_id: User.first.id
)

Article.create!(
    title: "Rails Girls Github",
    description: "Check the article about Rails Girls Githu",
    user_id: User.first.id
)
