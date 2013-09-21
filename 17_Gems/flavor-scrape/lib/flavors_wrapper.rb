class FlavorsWrapper
  def self.get_user(username)
    agent = Mechanize.new
    page = agent.get("http://flavors.me/#{username}")

    description = page.search('div.about_text').first

    if description
      description.text
    else
      ""
    end
  end
end