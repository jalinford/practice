class ApplicationController < ActionController::Base
  protect_from_forgery

  @categories = Category.order("title ASC")

end
