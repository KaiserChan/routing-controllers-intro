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

end
