class PagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def guest
  end

end
