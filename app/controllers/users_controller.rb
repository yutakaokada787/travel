class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        @preparations = Preparation.all
    end
end
