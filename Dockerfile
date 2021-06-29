FROM ruby:3.0.1 AS ror-blog-development

ENV INSTALL_PATH /opt/app

EXPOSE 3000

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH
COPY . .

RUN rm -rf node_modules vendor
RUN gem install rails bundler
RUN bundle install
RUN yarn install

CMD bin/rails server
