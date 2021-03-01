class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to user_path(@user.id)
        else
          render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def index
        @users = User.ordered_by_name
    end

    def expensive
        #binding.pry
        @legosets = Legoset.where("price > 100 and user_id = #{params[:id]}")
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    
end
