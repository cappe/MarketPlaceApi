class Api::V1::UsersController < ApplicationController
  def show
    respond_with do |format|
      format.json { render json: User.find(params[:id]) }
    end
  end
end
