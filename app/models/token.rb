# == Schema Information
#
# Table name: tokens
#
#  id         :bigint           not null, primary key
#  word       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tokens_on_word  (word)
#
class Token < ApplicationRecord
end
