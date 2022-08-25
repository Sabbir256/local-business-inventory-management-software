class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update]

    def index
        @users = User.all.order(:name)
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :role, :profile)
    end
end