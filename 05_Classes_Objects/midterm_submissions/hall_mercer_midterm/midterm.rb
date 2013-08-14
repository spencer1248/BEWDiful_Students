### Chronicling America, The Library Of Congress
### Midterm, by Mercer Hall
### This interface allows users to search the LOC database of historical, digitally archived newspapers
### Users can view the newspapers in a variety of formats, or they can view the winners of the National Digital Newspaper Program
### It is meant as a beginning possible model for teachers and students to use free government data for education

require_relative 'lib/news' #creates a link to the News class.
require_relative 'lib/awards' #creates a link to the Awards class.
require_relative 'lib/news_board' #creates a link to the NewsBoard class.
require_relative 'lib/awards_board' #creates a link to the AwardsBoard class.
require_relative 'lib/remote_source' #creates a link to RemoteSource class

def show_message(message)
  puts message
end

def get_choice
  gets.chomp
end

def get_input
  gets.chomp
end

def show_menu
  show_message("-----------------------------")
  show_message("Would you like to investigate newspapers from one of the 50 states?")
  show_message("Or would you like to see the award winners for the National Digital Newspaper Program?")
  show_message("Type 'newspapers' to explore the archives, or type 'winners' to see the awardees.")
  show_message("Type 'no' to exit.")
end

def add_remote_news
  RemoteSource.get_news.each do |news|
    NewsBoard.add_news news #adds news to an array of newspapers.
  end
end

def add_remote_awards
  RemoteSource.get_awards.each do |awards|
    AwardsBoard.add_awards awards #adds awardee to an array of winners.
  end
end

def show_news_board
  print `clear`
  show_message("For the digital newspapers, would you like to view them by 'state', by 'publication', or by 'website'?")
  input = get_input
  if input == 'state'
    NewsBoard.newspapers_state.each do |news| #NewsBoard.newspapers returns an array of newspapers
      show_message news
    end
  elsif input == 'publication'
    NewsBoard.newspapers_title.each do |news|
      show_message news
    end
  elsif input == 'website'
    NewsBoard.newspapers_url.each do |news|
      show_message news
    end
  else 
    show_message("-----------------------------")  
    show_message("You typed an invalid selection. Please try again.")
  end
end

def show_awards_board 
  print `clear`
  show_message("For the award winners, would you like to view them by 'university' or by 'website'?")
  input = get_input
  if input == 'university'
    AwardsBoard.winners_name.each do |awards| #AwardsBoard.winners returns an array of award winners
      show_message awards
    end  
  elsif input == 'website'
    AwardsBoard.winners_url.each do |awards|
      show_message awards
    end    
  else
    show_message("-----------------------------")  
    show_message("You typed an invalid selection. Please try again.")
  end
end

print `clear`
show_message("Welcome to the United States Library Of Congress.")
show_message("This feature on Chronicling America allows you to search historic newspapers from 1836 - 1922.")
show_message("These are excellent primary sources for students, teachers, and researchers.")
show_menu
loop do
  choice = get_choice
  if choice == "newspapers"
    add_remote_news
    show_news_board
  elsif choice == "winners"
    add_remote_awards
    show_awards_board
  elsif choice == "no"
    break
  else
    show_message("-----------------------------")    
    show_message("You typed an invalid selection. Please try again.")
  end
  show_menu
end

print `clear`
show_message("Thank you for visiting the Library Of Congress.")

