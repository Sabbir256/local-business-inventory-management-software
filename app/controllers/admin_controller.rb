class AdminController < ApplicationController
    def new
        @users = User.all.order(:name)
    end
end