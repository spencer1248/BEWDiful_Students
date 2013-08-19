class StoryBoard
  @stories = []
  def self.add_story(story)
    @stories << story
  end

  def self.stories
    @stories.map do |story|
      "Title: #{story.title}, Story: #{story.category}, Upvotes: #{story.upvotes}"
      
    end
  end
end
