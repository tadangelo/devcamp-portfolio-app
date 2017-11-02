class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @page_title = "Welcome"
  end

  def about
    @page_title = "About Me"
  end
 
  def contact
    @page_title = "I would love to hear from you"
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
