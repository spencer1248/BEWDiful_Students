class NewStories
  @@stories = []
  def self.add_story(story)
    @@stories << story
  end

  def self.stories
    @@stories.map do |story|
      "Story: #{story.story}, Byline: #{story.byline}, Date: #{story.date}, URL: #{story.url}"
    end
  end
end


