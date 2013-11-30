class NewTweets
  @@tweets = []
  def self.add_tweet(tweet)
    @@tweets << tweet
  end

  def self.tweets
    @@tweets.map do |tweet|
      "Tweet: #{tweet.text}"
    end
  end
end
