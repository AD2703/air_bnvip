class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings.order('bookings.created_at DESC')
  end

  def my_houses
    @user = current_user
  end
end
