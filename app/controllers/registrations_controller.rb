class RegistrationsController < ApplicationController
    def def new
        @user = User.new
    end
    
    def create
    end
end