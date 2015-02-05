class ProvidersController < ApplicationController
  before_action :verify_logged_in, only: [:show, :edit, :update]

  def new
    @provider = User.new

    render :new
  end

  def create
    @provider = User.new(provider_params)
    @provider.provider = true

    if @provider.save
      flash.now[:notice] = "Success!"
      log_in!(@provider)
      redirect_to provider_url
    else
      flash.now[:errors] = @provider.errors.full_messages

      render :new
    end
  end

  def show
    @provider = current_user

    render :show
  end

  def edit
    @provider = current_user

    render :edit
  end

  def update
    @provider = current_user

    if @provider.update(provider_params)
      flash.now[:notice] = "Success!"

      redirect_to provider_url
    else
      flash.now[:errors] = @provider.errors.full_messages

      render :edit
    end
  end

  private

  def provider_params
    params.require(:user).permit(:email, :password)
  end

end
