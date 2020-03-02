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


  # Set the correct corpus location in env file. For example:
  PATH_TO_CORPUS=/Users/jibrankalia/Downloads/smalldir

  # Load the corpus into Postgres. This will take a while. I recommend running with a smaller corpus first.
  bundle exec rake load_corpus_data:run

  # Start server
  bundle exec rails s -p 3000

  # When the database is ready you can search: 
  curl --request GET 'http://localhost:3000/app
  
```
