class PagesController < ApplicationController

  def welcome
    @header = "Welcome to our page!"
  end

  def about
    @header = "About us"
  end

  def contest
    @header = "We have a contest!"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
