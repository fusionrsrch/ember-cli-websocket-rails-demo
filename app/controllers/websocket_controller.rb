class WebsocketController < WebsocketRails::BaseController

    def client_connected
        channel = WebsocketRails[message[:channel]]
        accept_channel "hi" 
    end

    def client_disconnected
    end

end
