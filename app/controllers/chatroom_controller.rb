class ChatroomController < ApplicationController
    before_action :not_logged_in_redirect

    def new

    end

    def create

    end

    def index
        @messages = Message.all
    end

    private 

    def not_logged_in_redirect
        if !logged_in?
            flash[:alert] = "You must first log in to access the chatroom"
            redirect_to login_path
        end
    end

end
