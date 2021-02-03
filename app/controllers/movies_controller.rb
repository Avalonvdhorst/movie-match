class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :genres, :group ]

  def home
  end
end
