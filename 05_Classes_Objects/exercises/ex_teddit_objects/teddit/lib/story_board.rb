require_relative 'story'
class StoryBoard
	@@stories = []

	def self.add_story(story)
		story.upvote if story.to_s.include?("cat")
		@@stories << story
	end

	def self.stories
		@@stories
	end
end
