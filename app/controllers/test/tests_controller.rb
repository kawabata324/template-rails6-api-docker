class Test::TestsController < ApplicationController
  def index
    messages = Message.all
    render json: {messages: messages, status: 200}
  end
end
