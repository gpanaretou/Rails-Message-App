class MessagesController < ApplicationController
    before_action :require_user

    def create
        message = current_user.messages.new(message_params)
        if message.save
            ActionCable.server.broadcast("chatroom_channel", message_render(message))
        end
    end


    private 
    def message_params
        params.require(:message).permit(:body)
    end

    def message_render(message)
        render(partial: 'message', locals: {message: message} )
    end

end