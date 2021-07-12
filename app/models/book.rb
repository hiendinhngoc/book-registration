# == Schema Information
#
# Table name: books
#
#  id            :bigint           not null, primary key
#  author        :string(255)
#  description   :text(65535)
#  title         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_books_id :bigint           not null
#
# Indexes
#
#  index_books_on_user_books_id  (user_books_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_books_id => user_books.id)
#
class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
end
