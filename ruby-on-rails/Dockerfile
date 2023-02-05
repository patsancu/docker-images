# syntax=docker/dockerfile:1
FROM ruby:3.2.0

RUN apt update -qq && apt install -y ruby sqlite3 && gem install rails && gem update --system 3.4.6

WORKDIR /home/ruby-dev/code
