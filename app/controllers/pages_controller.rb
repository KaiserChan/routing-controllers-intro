class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Welcome to our page!"
  end

  def about
    @header = "About us"
  end

  def contest
    flash[:notice] = "Sorry but the contest has ended"
    redirect_to welcome_url
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secret
    if params[:magic_word] == "swole"
      redirect_to secrets_url
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to welcome_url
    end
  end

  def secrets
  end

end
