# base ruby build
FROM ruby:2.6 AS builder

WORKDIR /usr/helm/docs
COPY docs /usr/helm/docs

RUN gem install bundler
RUN bundle install
RUN bundle exec jekyll build

# static html hosting using nginx
FROM nginx:1.17.6
COPY --from=builder /usr/helm/docs/_site /usr/share/nginx/html

