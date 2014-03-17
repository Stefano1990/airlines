class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action       :find_world

  def find_world
    @world = @world || World.first
  end

  def current_airline
    @current_airline = @current_airline || Airline.first
  end
  helper_method :current_airline
end
