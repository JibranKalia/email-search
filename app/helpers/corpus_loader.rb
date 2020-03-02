class CorpusLoader
  def self.load
    path_to_file = ENV.fetch('PATH_TO_CORPUS', nil)
    if path_to_file.empty?
      raise "Please set PATH_TO_CORPUS"
    end

    tokenizer = PragmaticTokenizer::Tokenizer.new({ downcase: true })

    file_paths =  Dir.glob("#{path_to_file}/**/*").select{ |e| File.file? e }
    total = file_paths.length
    file_paths.each_with_index do |f, index|
      Rails.logger.info "Processing file: #{f}. #{index} of #{total}"
      process_file(f, tokenizer)
    end
  end

  private

  def self.process_file(file_path, tokenizer)
    mail = Mail.read(file_path)
    text = mail.decoded

    email = Email.find_or_create_by(path: file_path)
    word_array = tokenizer.tokenize(text)
    total = word_array.length

    word_array.each_with_index do |word, index|
      token = Token.find_or_create_by(word: word)
      EmailsTokens.find_or_create_by(token_id: token.id, email_id: email.id)
    end
  end
end