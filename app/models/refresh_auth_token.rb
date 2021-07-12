# == Schema Information
#
# Table name: refresh_auth_tokens
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RefreshAuthToken < ApplicationRecord
  include TokenEncrypted

  belongs_to :identical, polymorphic: true
end
