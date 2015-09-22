class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def validate
    secret = params[:confirmation_secret]
    id     = params[:id]

    @user = User.find id
    if @user.confirmation_secret == secret
      @user.profile = Profile.find_by description: 'user'
      @user.save
    else
      # mostrar error
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.confirmation_secret = SecureRandom.uuid
    if @user.save
      session[:user_id] = @user.id
      UserMailer.confirmation_email(@user).deliver
      redirect_to '/confirmation'
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(paramas[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(paramas[:id])
    @user.destroy
    redirect_to root_url
  end

  def confirmation

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone, :sex, :email, :password)
  end

end
