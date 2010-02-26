class PagesController < ApplicationController
  def index
    @title = "Home"
    @tapes = Tape.paginate :page => params[:page], :per_page => 2
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
