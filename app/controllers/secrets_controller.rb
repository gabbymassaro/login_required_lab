class SecretsController < ApplicationController
  before_action :require_login

  def show
    if params[:name].present?
      @secret = Secret.find(params[:name])
      render :show
    else
      redirect_to secret_path
    end
  end

  def index
  end

  def create
  end

  private

  def require_login
    redirect_to '/login' unless current_user
  end
end