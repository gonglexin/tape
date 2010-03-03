class PagesController < ApplicationController
  def index
    @title = "Home"
    if params[:category]
      @search = Tape.category_id_is(params[:category]).search(params[:search])
    else
      @search = Tape.search(params[:search])
    end
    @tapes = @search.paginate :page => params[:page], :per_page => 8
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
