# == Schema Information
#
# Table name: tokens
#
#  id         :bigint           not null, primary key
#  word       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tokens_on_word  (word)
#
class Token < ApplicationRecord
  has_many :emails_tokens, class_name: '::EmailsTokens'
  has_many :emails, through: :emails_tokens
end
