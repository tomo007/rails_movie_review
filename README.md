Install Ruby & Rails

ruby -v ruby 2.5.1
rails -v Rails 5.1.6

Set up Rails app
First, install the gems required by the application:

bundle install 

Setup database in config/database.yml

Next, execute the database migrations/schema setup:

bundle exec rake db:setup
or
bundle exec rake db:schema:load

Start the app
You're ready to localize your app:

bundle exec rails server

Import data from movidb API

rake get_100_now_playing_movies
