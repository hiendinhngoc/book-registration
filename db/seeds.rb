AdminUser.create(email: 'admin@test.com', password: 'admintest')

1.upto(10) do |i|
  User.create(email: "test_user_#{i}@gmail.com", name: "user_#{i}", password: '123456')
  Book.create(title: "book_#{i}", description: 'simple description', author: "author_#{i}")
end
