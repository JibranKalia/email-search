# README

Set up rails via:
```
  # Clone Repo
  git clone https://github.com/JibranKalia/email-search
  cd email-search

  # Get Ruby 2.7 via RVM
  curl -sSL https://get.rvm.io | bash -s stable --ruby
  rvm install ruby-2.7.0
  rvm use ruby-2.7.0

  # Get and start postgres via Homebrew
  brew install postgresql
  brew services start postgresql

  # Install gems
  bundle install
  bundle exec rails db:create
  bundle exec rails db:migrate

  # Start server
  bundle exec rails s -p 3000

  # Set the env to correct corpus location. For example:
  PATH_TO_CORPUS=/Users/jibrankalia/Downloads/smalldir

  # Load the corpus into Postgres
  bundle exec rake load_corpus_data:run

  # Search the database
  
  
```