# == Schema Information
#
# Table name: blacklisted_auth_tokens
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BlacklistedAuthToken < ApplicationRecord
end
