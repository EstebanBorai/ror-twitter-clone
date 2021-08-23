class TweetsController < ApplicationController
  def index
    latest_tweet = Tweet.order('created_at').last;

    @tweets = Tweet.all
    @are_tweets_available = Tweet.all.length > 0
    @latest_tweet_body = !latest_tweet.nil? ? latest_tweet.body : ""
  end
end
