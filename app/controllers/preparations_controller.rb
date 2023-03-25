class PreparationsController < ApplicationController
    def new
        @preparation = Preparation.new
    end
    def create
      preparation = Preparation.new(tweet_params)
      preparation.user_id = current_user.id
      preparation.save
      redirect_to user_path(current_user.id)
    end
    private
    def tweet_params
        params.require(:preparation).permit(:body)
    end
end

