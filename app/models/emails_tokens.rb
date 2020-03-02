# == Schema Information
#
# Table name: emails_tokens
#
#  email_id :bigint           not null
#  token_id :bigint           not null
#
# Indexes
#
#  index_emails_tokens_on_email_id_and_token_id  (email_id,token_id) UNIQUE
#  index_emails_tokens_on_token_id_and_email_id  (token_id,email_id) UNIQUE
#
class EmailsTokens < ApplicationRecord
  belongs_to :email
  belongs_to :token
end
