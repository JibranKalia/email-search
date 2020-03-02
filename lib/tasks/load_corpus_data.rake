namespace :load_corpus_data do
  desc "Load corpus data into database"
  task run: :environment do
    Rails.logger = Logger.new(STDOUT)
    Rails.logger.level = :info
    CorpusLoader.load
  end
end
