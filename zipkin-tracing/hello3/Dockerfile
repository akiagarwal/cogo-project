FROM ruby:2.3.0

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

CMD ["ruby", "hello_3.rb", "-o", "0.0.0.0"]
