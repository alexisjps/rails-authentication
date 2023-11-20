class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:home]
  def home
    @user = current_user
    # pouloulouuuuu
  end
end
