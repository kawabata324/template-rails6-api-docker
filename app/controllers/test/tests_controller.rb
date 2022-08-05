class Test::TestsController < ApplicationController
  def index
    messages = Message.all
    render json: {messages: messages, status: 200}
  end

  def create
    message = params[:message]
    createdMessage = Message.create!({ body: message })
    ActionCable.server.broadcast 'message_channel', body: message
    render json: {status: 200, message: createdMessage}
  end
end
