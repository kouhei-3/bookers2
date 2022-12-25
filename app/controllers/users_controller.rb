class UsersController < ApplicationController
  def new
    user = User.new(user_params)
      
  end
  
  def create
    @user =User.new(user_params)
    @user.user_id = current_user.id
    if @user.save
      flash[:notice] = "Welcome! You have signed up successfully."
    redirect_to 'book_path'
    end
    
  end
  
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
    
   
  end

  def edit
    @user = User.find(params[:id])
    @users = User.all
    
    if @user == current_user
       
    else
       redirect_to user_path(current_user.id)
    end  
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
    redirect_to user_path(current_user.id)
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end