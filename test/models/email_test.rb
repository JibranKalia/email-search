# == Schema Information
#
# Table name: emails
#
#  id         :bigint           not null, primary key
#  path       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  token_id   :bigint           not null
#
# Indexes
#
#  index_emails_on_token_id  (token_id)
#
require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
