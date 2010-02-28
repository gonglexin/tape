class PagesController < ApplicationController
  def index
    @title = "Home"
    @search = Tape.search(params[:search])
    @tapes = @search.paginate :page => params[:page], :per_page => 10
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
