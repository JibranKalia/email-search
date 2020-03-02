class SearchController < ApplicationController
  def search
    search_term = params[:search_term]

    # TODO prevent sql injection
    tokens = Token.where("word like '#{search_term}%'").order(word: :asc).limit(3)
    response = build_response(tokens)
    render json: response
  end

  private

  def build_response(tokens)
    response = {}
    tokens.each do |token|
      emails = token.emails.limit(3).map(&:full_text)
      response[token.word] = emails
    end
    response
  end

end
