# == Schema Information
#
# Table name: books
#
#  id          :bigint           not null, primary key
#  author      :string(255)
#  description :text(65535)
#  title       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :book do
    title { "Harry Porter" }
    description { "The best seller book" }
    author { "J. K. Rowling" }
  end
end
