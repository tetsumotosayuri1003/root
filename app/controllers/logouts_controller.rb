class LogoutsController < ApplicationController
    def show
        reset_session
        redirect_to root_path
    end
end
