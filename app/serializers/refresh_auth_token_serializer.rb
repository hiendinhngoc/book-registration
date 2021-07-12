# == Schema Information
#
# Table name: refresh_auth_tokens
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RefreshAuthTokenSerializer < BaseSerializer
  attributes :id, :created_at, :updated_at
end
