class SessionsController < ApplicationController
  def create
    @user = login params[:email], params[:password]
    render status: 422 unless @user
  end

  def destroy
    logout
  end
end
