class PagesController < ApplicationController

  def home
      @title = "Home"
  end

  def about
      @title = "About"
  end

  def photo
      @title = "Photo"
  end

  def follow
      @title = "Follow"
  end

  def contacts
      @title = "Contacts"
  end

end
