class ProfileController < ApplicationController
    def edit
    end

    def update
        if Current.user.update(update_params)
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def update_params
        params.require(:user).permit(:name, :phone, :address, :state, :postcode, :city)
    end
end