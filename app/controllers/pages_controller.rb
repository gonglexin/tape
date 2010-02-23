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
    # cache the contact
    @contact = session[:contact] ||= Contact.first
  end

end
