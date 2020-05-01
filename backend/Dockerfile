FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y nodejs imagemagick
RUN mkdir /ec_app
WORKDIR /ec_app
COPY Gemfile /ec_app/Gemfile
COPY Gemfile.lock /ec_app/Gemfile.lock
RUN bundle install
COPY . /ec_app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
