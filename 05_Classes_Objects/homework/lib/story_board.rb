require_relative 'interface_manager'
require_relative 'remote_source'

class StoryBoard
  @@stories = []

  def self.add_story(story)
    @@stories << story
  end

  def self.add_mashable_stories
  	RemoteSource.get.each do |story|
   	 add_story story #adds story to an array of stories.
  	end
  end
  
  def self.show_full_of(choice=1)
    choice == 1 ? StoryBoard.add_mashable_stories : StoryBoard.add_digg_stories
    StoryBoard.show_story_board
  end

  def self.add_digg_stories
  	RemoteSource.get_digg.each do |story|
   	 add_story story #adds story to an array of stories.
  	end
  end

  def self.stories
    @@stories.map do |story|
      "Story: #{story.title}, Category: (#{story.category}), Current Upvotes: #{story.upvotes}"
    end
  end

  def self.show_story_board
  	stories.each do |story| #StoryBorad.stories returns an array of stories
     InterfaceManager.show_message story 
   end
  end
end
