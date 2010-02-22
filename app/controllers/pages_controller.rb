class PagesController < ApplicationController
  def index
    @title = "Home"
    @tapes = Tape.all
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
    #Fixme 这里的||=　没有起到效果,可能是没有session的原因
    @contact ||= Contact.first
  end

end
