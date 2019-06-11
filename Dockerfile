FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y nodejs curl cron unzip
RUN gem install bundler

ENV RAILS_ENV development
RUN mkdir /myapp
WORKDIR /myapp
COPY . /myapp
RUN bundle install && rails db:migrate
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
