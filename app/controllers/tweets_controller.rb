class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @latest_tweet = Tweet.order('created_at').last
  end
end
