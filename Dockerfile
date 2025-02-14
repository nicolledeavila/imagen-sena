FROM public.ecr.aws/docker/library/ruby:3.2

RUN apt-get update && apt-get install -y \
    curl \
    nodejs \
    build-essential \
    libpq-dev \
    npm \
    sqlite3 \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000


