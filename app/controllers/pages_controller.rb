class PagesController < ApplicationController

def welcome
  @header = "This is the welcome page"
end

def about

end

def contest
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to welcome_path
end

def kitten
  requested_size = params[:size]
  # requested_size2 = params[:size2]
  @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
end

def secrets
  if params[:magic_word] != "hello"
    flash[:alert] = "Sorry, you're not authorized to see that page!"
    redirect_to kitten_path
  end
end

end
