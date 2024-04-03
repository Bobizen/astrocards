class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy_statement ]

  def home
  end

  def privacy_statement
  end

end
