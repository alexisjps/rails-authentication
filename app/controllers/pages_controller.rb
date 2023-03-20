class PagesController < ApplicationController
  # comment
  skip_before_action :authenticate_user! # nice code
  def home
    # some code
  end
end
