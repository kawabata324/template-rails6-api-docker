class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_for "chat_room"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    pp data.message
    # Message.create!({ body: data.message })
    # クライアントサイドからspeakアクションから渡されたmessageパラメータをdataとして受け取り、
    # messageを作る
  end
end
