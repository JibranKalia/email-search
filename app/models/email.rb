# == Schema Information
#
# Table name: emails
#
#  id         :bigint           not null, primary key
#  path       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Email < ApplicationRecord
end
