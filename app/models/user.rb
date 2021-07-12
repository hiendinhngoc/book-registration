# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  name       :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :user_books, dependent: :destroy
  has_many :books, through: :user_books
end
