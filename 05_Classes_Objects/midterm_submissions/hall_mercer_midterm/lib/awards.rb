class Awards
  attr_reader :name, :url
  def initialize(name, url)
    @url = url
    @name = name
  end
end