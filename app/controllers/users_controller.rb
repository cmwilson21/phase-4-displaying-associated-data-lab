class UsersController < ApplicationController


  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items 
  end


  private
  
  def user_params
    params.permit(:username, :city)
  end


end
