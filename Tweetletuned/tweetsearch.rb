require_relative 'tweet'
require_relative 'new_tweets'
require_relative 'remote_source'
require_relative 'remote_sourceQOTSA'
require_relative 'remote_sourceNIN'

class Tweetsearch

     def show_message(message)
       puts message
     end

     def get_input
       gets.chomp 
     end

     def get_choice
       gets.to_i
     end

     def show_menu
       show_message "Would you like to:"
       show_message "1. Find tweets about Radiohead"
       show_message "2. Find tweets about Queens of the Stone Age"
       show_message "3. Find tweets about Nine Inch Nails"
       show_message "4. Find tweets about another band"
       show_message "5. Compose your own tweet"
       show_message "6. Exit"
     end

     def add_radiohead_tweets
        RemoteSource.get.each do |tweet|
        NewTweets.add_tweets tweet
       end
     end

     def add_qotsa_tweets
        RemoteSourceQOTSA.get.each do |tweet|
        NewTweets.add_tweets tweet
      end
     end

     def add_nin_tweets
        RemoteSourceNIN.get.each do |tweet|
        NewTweets.add_tweets tweet
      end
     end

    def add_personal_tweet
       show_message("Tweet away:")
       tweet = get_input
       NewTweets.add_tweets(Tweet.new)
     end

    def show_new_tweets
       NewTweets.tweets.each do |tweet|
       show_message tweet 
     end
    end

  def launch
   show_message("Welcome to Tweetletuned, a music tweet search engine with a difference! Author: Mac Randall")
   show_menu
   loop do
   choice = get_choice
   if choice == 1
    add_radiohead_tweets
    show_new_tweets
    show_menu
   elsif choice == 2
  	add_qotsa_tweets
  	show_new_tweets
  	show_menu
   elsif choice == 3
  	add_nin_tweets
  	show_new_tweets
  	show_menu
   elsif choice == 4
  	show_message "Sorry, this is a fake option."
  	show_menu
   elsif choice == 5
    add_personal_tweet
    show_new_tweets
    show_menu
   elsif choice == 6 
    break
   else
    show_message "Invalid choice. Please try again."
    show_menu
    end
  end
end

puts "Thank you for using Tweetletuned."

end
