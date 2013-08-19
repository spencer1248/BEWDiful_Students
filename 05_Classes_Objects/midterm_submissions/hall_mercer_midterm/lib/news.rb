class News
  attr_reader :state, :title, :url
  def initialize(state, title, url)
    @state = state
    @title = title
    @url = url
  end
end