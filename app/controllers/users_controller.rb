class UsersController < ApplicationController
  def search
    @user = User.find_by('email LIKE ?', "%#{params[:email]}%")
    @posts = @user&.posts || []
  end
end
