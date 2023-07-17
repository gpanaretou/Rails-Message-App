class ChatroomController < ApplicationController

    def new

    end

    def create

    end

    def index
        @messages = Message.all
    end


end
