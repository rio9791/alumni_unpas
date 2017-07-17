class HomeController < ApplicationController

  def index
    @news = News.displays
    @jobs = JobVacancy.available.limit(10)
  end

end
