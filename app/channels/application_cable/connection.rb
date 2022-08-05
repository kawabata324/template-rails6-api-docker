module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :chat_token

    def connect
      self.chat_token = Time.now.to_i
    end

  end
end
